.class final Lcom/android/server/wm/WindowState;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$WindowState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowState$DeathRecipient;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "WindowState"

.field private static final bDSSEnabled:Z = true


# instance fields
.field mAppFreezing:Z

.field final mAppOp:I

.field mAppOpVisibility:Z

.field mAppToken:Lcom/android/server/wm/AppWindowToken;

.field mAttachedHidden:Z

.field final mAttachedWindow:Lcom/android/server/wm/WindowState;

.field final mAttrs:Landroid/view/WindowManager$LayoutParams;

.field final mBaseLayer:I

.field final mChildWindows:Lcom/android/server/wm/WindowList;

.field final mClient:Landroid/view/IWindow;

.field final mCompatFrame:Landroid/graphics/Rect;

.field private mConfigHasChanged:Z

.field mConfiguration:Landroid/content/res/Configuration;

.field final mContainingFrame:Landroid/graphics/Rect;

.field mContentChanged:Z

.field final mContentFrame:Landroid/graphics/Rect;

.field final mContentInsets:Landroid/graphics/Rect;

.field mContentInsetsChanged:Z

.field final mContext:Landroid/content/Context;

.field final mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

.field final mDecorFrame:Landroid/graphics/Rect;

.field mDelayedResize:Z

.field mDestroying:Z

.field mDisplayChanging:Z

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field final mDisplayFrame:Landroid/graphics/Rect;

.field mDrawLock:Landroid/os/PowerManager$WakeLock;

.field mDssScale:F

.field mEnforceSizeCompat:Z

.field mExiting:Z

.field mFloatingAppHScale:F

.field mFloatingAppVScale:F

.field mFocusCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/IWindowFocusObserver;",
            ">;"
        }
    .end annotation
.end field

.field final mFrame:Landroid/graphics/Rect;

.field final mGivenContentInsets:Landroid/graphics/Rect;

.field mGivenInsetsPending:Z

.field final mGivenTouchableRegion:Landroid/graphics/Region;

.field final mGivenVisibleInsets:Landroid/graphics/Rect;

.field mGlobalScale:F

.field mHScale:F

.field mHasSurface:Z

.field mHaveFrame:Z

.field mHideBySViewCover:Z

.field mInputChannel:Landroid/view/InputChannel;

.field final mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field mInvGlobalScale:F

.field mIsAdss:Z

.field final mIsFloatingLayer:Z

.field final mIsImWindow:Z

.field final mIsWallpaper:Z

.field public mKeptStartingWindowToCurrentDisplay:Z

.field final mLastContainingFrame:Landroid/graphics/Rect;

.field final mLastContentInsets:Landroid/graphics/Rect;

.field final mLastFrame:Landroid/graphics/Rect;

.field mLastFreezeDuration:I

.field mLastHScale:F

.field final mLastOutsets:Landroid/graphics/Rect;

.field final mLastOverscanInsets:Landroid/graphics/Rect;

.field mLastRelayoutConfiguration:Landroid/content/res/Configuration;

.field mLastRequestedHeight:I

.field mLastRequestedWidth:I

.field final mLastStableInsets:Landroid/graphics/Rect;

.field final mLastSystemDecorRect:Landroid/graphics/Rect;

.field mLastTitle:Ljava/lang/CharSequence;

.field mLastVScale:F

.field final mLastVisibleInsets:Landroid/graphics/Rect;

.field mLayer:I

.field final mLayoutAttached:Z

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field mMultiWindowStyleChanging:Z

.field mNotOnAppsDisplay:Z

.field mObscured:Z

.field mObscuredChanged:Z

.field mOrientationChanging:Z

.field final mOutsetFrame:Landroid/graphics/Rect;

.field final mOutsets:Landroid/graphics/Rect;

.field mOutsetsChanged:Z

.field private mOverrideConfig:Landroid/content/res/Configuration;

.field final mOverscanFrame:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mOverscanInsetsChanged:Z

.field final mOwnerUid:I

.field final mParentFrame:Landroid/graphics/Rect;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPolicyVisibility:Z

.field mPolicyVisibilityAfterAnim:Z

.field mRebuilding:Z

.field mRelayoutCalled:Z

.field mRemoveOnExit:Z

.field mRemoved:Z

.field mRequestedHeight:I

.field mRequestedWidth:I

.field mRootToken:Lcom/android/server/wm/WindowToken;

.field mSavedFlags:I

.field mScaleToastFrame:Landroid/graphics/Rect;

.field mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

.field mSeq:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field private mShowToOwnerOnly:Z

.field final mShownFrame:Landroid/graphics/RectF;

.field mSplitToastFrame:Landroid/graphics/Rect;

.field mSplitToastStack:Lcom/android/server/wm/TaskStack;

.field final mStableFrame:Landroid/graphics/Rect;

.field final mStableInsets:Landroid/graphics/Rect;

.field mStableInsetsChanged:Z

.field mStringNameCache:Ljava/lang/String;

.field final mSubLayer:I

.field final mSystemDecorRect:Landroid/graphics/Rect;

.field mSystemUiVisibility:I

.field mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mToastRequestedOrientation:I

.field mToken:Lcom/android/server/wm/WindowToken;

.field mTouchableInsets:I

.field mTurnOnScreen:Z

.field mVScale:F

.field mViewVisibility:I

.field final mVisibleFrame:Landroid/graphics/Rect;

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mVisibleInsetsChanged:Z

.field mWaitingForOrientation:Z

.field mWallpaperDisplayOffsetX:I

.field mWallpaperDisplayOffsetY:I

.field mWallpaperVisible:Z

.field mWallpaperX:F

.field mWallpaperXStep:F

.field mWallpaperY:F

.field mWallpaperYStep:F

.field mWasExiting:Z

.field final mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field final mWindowId:Landroid/view/IWindowId;

.field mXOffset:I

.field mYOffset:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;ILcom/android/server/wm/DisplayContent;)V
    .registers 34
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "s"    # Lcom/android/server/wm/Session;
    .param p3, "c"    # Landroid/view/IWindow;
    .param p4, "token"    # Lcom/android/server/wm/WindowToken;
    .param p5, "attachedWindow"    # Lcom/android/server/wm/WindowState;
    .param p6, "appOp"    # I
    .param p7, "seq"    # I
    .param p8, "a"    # Landroid/view/WindowManager$LayoutParams;
    .param p9, "viewVisibility"    # I
    .param p10, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 457
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v20, Landroid/view/WindowManager$LayoutParams;

    invoke-direct/range {v20 .. v20}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 146
    new-instance v20, Lcom/android/server/wm/WindowList;

    invoke-direct/range {v20 .. v20}, Lcom/android/server/wm/WindowList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mChildWindows:Lcom/android/server/wm/WindowList;

    .line 157
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mPolicyVisibility:Z

    .line 158
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mPolicyVisibilityAfterAnim:Z

    .line 159
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAppOpVisibility:Z

    .line 184
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mLayoutSeq:I

    .line 186
    sget-object v20, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mConfiguration:Landroid/content/res/Configuration;

    .line 187
    sget-object v20, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mOverrideConfig:Landroid/content/res/Configuration;

    .line 189
    sget-object v20, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mLastRelayoutConfiguration:Landroid/content/res/Configuration;

    .line 200
    new-instance v20, Landroid/graphics/RectF;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mShownFrame:Landroid/graphics/RectF;

    .line 206
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mVisibleInsets:Landroid/graphics/Rect;

    .line 207
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mLastVisibleInsets:Landroid/graphics/Rect;

    .line 215
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mContentInsets:Landroid/graphics/Rect;

    .line 216
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mLastContentInsets:Landroid/graphics/Rect;

    .line 223
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mOverscanInsets:Landroid/graphics/Rect;

    .line 224
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mLastOverscanInsets:Landroid/graphics/Rect;

    .line 231
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mStableInsets:Landroid/graphics/Rect;

    .line 232
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mLastStableInsets:Landroid/graphics/Rect;

    .line 239
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mOutsets:Landroid/graphics/Rect;

    .line 240
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mLastOutsets:Landroid/graphics/Rect;

    .line 241
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mOutsetsChanged:Z

    .line 253
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mGivenContentInsets:Landroid/graphics/Rect;

    .line 259
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 264
    new-instance v20, Landroid/graphics/Region;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Region;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mGivenTouchableRegion:Landroid/graphics/Region;

    .line 272
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mTouchableInsets:I

    .line 278
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mSystemDecorRect:Landroid/graphics/Rect;

    .line 279
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mLastSystemDecorRect:Landroid/graphics/Rect;

    .line 282
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mGlobalScale:F

    .line 283
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mInvGlobalScale:F

    .line 284
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mHScale:F

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mVScale:F

    .line 285
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mLastHScale:F

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mLastVScale:F

    .line 286
    new-instance v20, Landroid/graphics/Matrix;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mTmpMatrix:Landroid/graphics/Matrix;

    .line 291
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mDssScale:F

    .line 292
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsAdss:Z

    .line 296
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mFrame:Landroid/graphics/Rect;

    .line 297
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mLastFrame:Landroid/graphics/Rect;

    .line 300
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mCompatFrame:Landroid/graphics/Rect;

    .line 302
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mContainingFrame:Landroid/graphics/Rect;

    .line 303
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mLastContainingFrame:Landroid/graphics/Rect;

    .line 305
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mParentFrame:Landroid/graphics/Rect;

    .line 309
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mDisplayFrame:Landroid/graphics/Rect;

    .line 315
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mOverscanFrame:Landroid/graphics/Rect;

    .line 319
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mStableFrame:Landroid/graphics/Rect;

    .line 323
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mDecorFrame:Landroid/graphics/Rect;

    .line 327
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mContentFrame:Landroid/graphics/Rect;

    .line 331
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mVisibleFrame:Landroid/graphics/Rect;

    .line 335
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mOutsetFrame:Landroid/graphics/Rect;

    .line 341
    const/high16 v20, -0x40800000    # -1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mWallpaperX:F

    .line 342
    const/high16 v20, -0x40800000    # -1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mWallpaperY:F

    .line 346
    const/high16 v20, -0x40800000    # -1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mWallpaperXStep:F

    .line 347
    const/high16 v20, -0x40800000    # -1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mWallpaperYStep:F

    .line 351
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mWallpaperDisplayOffsetX:I

    .line 352
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mWallpaperDisplayOffsetY:I

    .line 414
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHasSurface:Z

    .line 416
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mNotOnAppsDisplay:Z

    .line 432
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHideBySViewCover:Z

    .line 437
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mSavedFlags:I

    .line 438
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mSplitToastFrame:Landroid/graphics/Rect;

    .line 439
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mScaleToastFrame:Landroid/graphics/Rect;

    .line 440
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mSplitToastStack:Lcom/android/server/wm/TaskStack;

    .line 441
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    .line 442
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mMultiWindowStyleChanging:Z

    .line 443
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mFloatingAppHScale:F

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mFloatingAppVScale:F

    .line 444
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mToastRequestedOrientation:I

    .line 448
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mKeptStartingWindowToCurrentDisplay:Z

    .line 452
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mDelayedResize:Z

    .line 458
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mService:Lcom/android/server/wm/WindowManagerService;

    .line 459
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, mSession:Lcom/android/server/wm/Session;

    .line 460
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, mClient:Landroid/view/IWindow;

    .line 461
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, mAppOp:I

    .line 462
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, mToken:Lcom/android/server/wm/WindowToken;

    .line 463
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/wm/Session;->mUid:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mOwnerUid:I

    .line 464
    new-instance v20, Lcom/android/server/wm/WindowState$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowState$1;-><init>(Lcom/android/server/wm/WindowState;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mWindowId:Landroid/view/IWindowId;

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 479
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput v0, v1, mViewVisibility:I

    .line 480
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mPolicy:Landroid/view/WindowManagerPolicy;

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mContext:Landroid/content/Context;

    .line 483
    new-instance v10, Lcom/android/server/wm/WindowState$DeathRecipient;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$1;)V

    .line 484
    .local v10, "deathRecipient":Lcom/android/server/wm/WindowState$DeathRecipient;
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, mSeq:I

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_495

    const/16 v20, 0x1

    :goto_32e
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mEnforceSizeCompat:Z

    .line 490
    :try_start_334
    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v0, v10, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_341
    .catch Landroid/os/RemoteException; {:try_start_334 .. :try_end_341} :catch_499

    .line 504
    move-object/from16 v0, p0

    iput-object v10, v0, mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x3e8

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_531

    move-object/from16 v0, p0

    iget-object v0, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7cf

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_531

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v20, v0

    move-object/from16 v0, p5

    iget-object v0, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v20

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mBaseLayer:I

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v20, v0

    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Landroid/view/WindowManagerPolicy;->subWindowTypeToLayerLw(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mSubLayer:I

    .line 514
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 515
    sget-boolean v20, Lcom/android/server/wm/WindowManagerService;->DEBUG_ADD_REMOVE:Z

    if-eqz v20, :cond_3e1

    const-string v20, "WindowState"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Adding "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_3e1
    move-object/from16 v0, p0

    iget-object v0, v0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v9, v0, mChildWindows:Lcom/android/server/wm/WindowList;

    .line 518
    .local v9, "childWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->size()I

    move-result v15

    .line 519
    .local v15, "numChildWindows":I
    if-nez v15, :cond_4eb

    .line 520
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_3f6
    :goto_3f6
    move-object/from16 v0, p0

    iget-object v0, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x3eb

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_521

    const/16 v20, 0x1

    :goto_40c
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mLayoutAttached:Z

    .line 542
    move-object/from16 v0, p5

    iget-object v0, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7db

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_44e

    move-object/from16 v0, p5

    iget-object v0, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7dc

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_44e

    move-object/from16 v0, p5

    iget-object v0, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x8e8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_525

    :cond_44e
    const/16 v20, 0x1

    :goto_450
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsImWindow:Z

    .line 545
    move-object/from16 v0, p5

    iget-object v0, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7dd

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_529

    const/16 v20, 0x1

    :goto_46c
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsWallpaper:Z

    .line 546
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsImWindow:Z

    move/from16 v20, v0

    if-nez v20, :cond_482

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsWallpaper:Z

    move/from16 v20, v0

    if-eqz v20, :cond_52d

    :cond_482
    const/16 v20, 0x1

    :goto_484
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsFloatingLayer:Z

    .line 563
    .end local v9    # "childWindows":Lcom/android/server/wm/WindowList;
    .end local v15    # "numChildWindows":I
    :goto_48a
    move-object/from16 v7, p0

    .line 564
    .local v7, "appWin":Lcom/android/server/wm/WindowState;
    :goto_48c
    iget-object v0, v7, mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5ee

    .line 565
    iget-object v7, v7, mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_48c

    .line 485
    .end local v7    # "appWin":Lcom/android/server/wm/WindowState;
    :cond_495
    const/16 v20, 0x0

    goto/16 :goto_32e

    .line 491
    :catch_499
    move-exception v11

    .line 492
    .local v11, "e":Landroid/os/RemoteException;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 493
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 494
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mLayoutAttached:Z

    .line 495
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsImWindow:Z

    .line 496
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsWallpaper:Z

    .line 497
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsFloatingLayer:Z

    .line 498
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mBaseLayer:I

    .line 499
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mSubLayer:I

    .line 500
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 501
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 645
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_4ea
    :goto_4ea
    return-void

    .line 522
    .restart local v9    # "childWindows":Lcom/android/server/wm/WindowList;
    .restart local v15    # "numChildWindows":I
    :cond_4eb
    const/4 v4, 0x0

    .line 523
    .local v4, "added":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4ed
    if-ge v13, v15, :cond_515

    .line 524
    invoke-virtual {v9, v13}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v20

    iget v8, v0, mSubLayer:I

    .line 525
    .local v8, "childSubLayer":I
    move-object/from16 v0, p0

    iget v0, v0, mSubLayer:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v0, v8, :cond_50f

    move-object/from16 v0, p0

    iget v0, v0, mSubLayer:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v8, :cond_51e

    if-gez v8, :cond_51e

    .line 530
    :cond_50f
    move-object/from16 v0, p0

    invoke-virtual {v9, v13, v0}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 531
    const/4 v4, 0x1

    .line 535
    .end local v8    # "childSubLayer":I
    :cond_515
    if-nez v4, :cond_3f6

    .line 536
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3f6

    .line 523
    .restart local v8    # "childSubLayer":I
    :cond_51e
    add-int/lit8 v13, v13, 0x1

    goto :goto_4ed

    .line 540
    .end local v4    # "added":Z
    .end local v8    # "childSubLayer":I
    .end local v13    # "i":I
    :cond_521
    const/16 v20, 0x0

    goto/16 :goto_40c

    .line 542
    :cond_525
    const/16 v20, 0x0

    goto/16 :goto_450

    .line 545
    :cond_529
    const/16 v20, 0x0

    goto/16 :goto_46c

    .line 546
    :cond_52d
    const/16 v20, 0x0

    goto/16 :goto_484

    .line 550
    .end local v9    # "childWindows":Lcom/android/server/wm/WindowList;
    .end local v15    # "numChildWindows":I
    :cond_531
    move-object/from16 v0, p0

    iget-object v0, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v20, v0

    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v20

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mBaseLayer:I

    .line 553
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mSubLayer:I

    .line 554
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 555
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mLayoutAttached:Z

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7db

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5a7

    move-object/from16 v0, p0

    iget-object v0, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7dc

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5a7

    move-object/from16 v0, p0

    iget-object v0, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x8e8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5e5

    :cond_5a7
    const/16 v20, 0x1

    :goto_5a9
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsImWindow:Z

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7dd

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5e8

    const/16 v20, 0x1

    :goto_5c5
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsWallpaper:Z

    .line 560
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsImWindow:Z

    move/from16 v20, v0

    if-nez v20, :cond_5db

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsWallpaper:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5eb

    :cond_5db
    const/16 v20, 0x1

    :goto_5dd
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsFloatingLayer:Z

    goto/16 :goto_48a

    .line 556
    :cond_5e5
    const/16 v20, 0x0

    goto :goto_5a9

    .line 559
    :cond_5e8
    const/16 v20, 0x0

    goto :goto_5c5

    .line 560
    :cond_5eb
    const/16 v20, 0x0

    goto :goto_5dd

    .line 567
    .restart local v7    # "appWin":Lcom/android/server/wm/WindowState;
    :cond_5ee
    iget-object v6, v7, mToken:Lcom/android/server/wm/WindowToken;

    .line 568
    .local v6, "appToken":Lcom/android/server/wm/WindowToken;
    :goto_5f0
    iget-object v0, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    if-nez v20, :cond_612

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v6, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/WindowToken;

    .line 570
    .local v16, "parent":Lcom/android/server/wm/WindowToken;
    if-eqz v16, :cond_612

    move-object/from16 v0, v16

    if-ne v6, v0, :cond_72d

    .line 575
    .end local v16    # "parent":Lcom/android/server/wm/WindowToken;
    :cond_612
    move-object/from16 v0, p0

    iput-object v6, v0, mRootToken:Lcom/android/server/wm/WindowToken;

    .line 576
    iget-object v0, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    if-eqz v20, :cond_65c

    .line 578
    invoke-virtual/range {p0 .. p0}, getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 579
    .local v5, "appDisplay":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, p10

    if-eq v0, v5, :cond_731

    const/16 v20, 0x1

    :goto_632
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mNotOnAppsDisplay:Z

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->showForAllUsers:Z

    move/from16 v20, v0

    if-eqz v20, :cond_65c

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v21, v0

    const/high16 v22, 0x80000

    or-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 588
    .end local v5    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_65c
    new-instance v20, Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;-><init>(Lcom/android/server/wm/WindowState;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 591
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mRequestedWidth:I

    .line 592
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mRequestedHeight:I

    .line 593
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mLastRequestedWidth:I

    .line 594
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mLastRequestedHeight:I

    .line 595
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mXOffset:I

    .line 596
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mYOffset:I

    .line 597
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mLayer:I

    .line 598
    new-instance v21, Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    iget-object v0, v0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    if-eqz v20, :cond_735

    move-object/from16 v0, p0

    iget-object v0, v0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    move-object/from16 v20, v0

    :goto_6cb
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v22

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 605
    .local v12, "focusWindowState":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7d5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7ca

    .line 606
    if-eqz v12, :cond_74f

    iget-object v0, v12, mSession:Lcom/android/server/wm/Session;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_74f

    iget-object v0, v12, mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_74f

    .line 609
    invoke-virtual {v12}, getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    const/16 v21, 0x800

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_738

    .line 610
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, setScaleToastFrame(Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_4ea

    .line 573
    .end local v12    # "focusWindowState":Lcom/android/server/wm/WindowState;
    .restart local v16    # "parent":Lcom/android/server/wm/WindowToken;
    :cond_72d
    move-object/from16 v6, v16

    .line 574
    goto/16 :goto_5f0

    .line 579
    .end local v16    # "parent":Lcom/android/server/wm/WindowToken;
    .restart local v5    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_731
    const/16 v20, 0x0

    goto/16 :goto_632

    .line 598
    .end local v5    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_735
    const/16 v20, 0x0

    goto :goto_6cb

    .line 611
    .restart local v12    # "focusWindowState":Lcom/android/server/wm/WindowState;
    :cond_738
    invoke-virtual {v12}, getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4ea

    .line 612
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, setSplitToastStack(Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_4ea

    .line 615
    :cond_74f
    invoke-virtual/range {p0 .. p0}, getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v18

    .line 616
    .local v18, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowList;->size()I

    move-result v20

    add-int/lit8 v13, v20, -0x1

    .restart local v13    # "i":I
    :goto_759
    if-ltz v13, :cond_4ea

    .line 617
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowState;

    .line 618
    .local v19, "ws":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v19

    iget-object v0, v0, mSession:Lcom/android/server/wm/Session;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7c7

    move-object/from16 v0, v19

    iget-object v0, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7c7

    .line 620
    invoke-virtual/range {v19 .. v19}, getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    const/16 v21, 0x800

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_7ae

    invoke-virtual/range {v19 .. v19}, getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v20

    if-nez v20, :cond_7ae

    invoke-virtual/range {v19 .. v19}, isVisibleNow()Z

    move-result v20

    if-eqz v20, :cond_7ae

    .line 623
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, setScaleToastFrame(Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_4ea

    .line 625
    :cond_7ae
    invoke-virtual/range {v19 .. v19}, getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7c7

    .line 626
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, setSplitToastStack(Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_4ea

    .line 616
    :cond_7c7
    add-int/lit8 v13, v13, -0x1

    goto :goto_759

    .line 634
    .end local v13    # "i":I
    .end local v18    # "windows":Lcom/android/server/wm/WindowList;
    .end local v19    # "ws":Lcom/android/server/wm/WindowState;
    :cond_7ca
    invoke-virtual/range {p0 .. p0}, getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v14

    .line 635
    .local v14, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v14, :cond_4ea

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4ea

    const/16 v20, 0x800

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_4ea

    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v20

    if-nez v20, :cond_4ea

    .line 637
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 638
    .local v17, "tmpScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 639
    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mHScale:F

    .line 640
    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mVScale:F

    goto/16 :goto_4ea
.end method

.method private static applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8
    .param p0, "outRegion"    # Landroid/graphics/Region;
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "inset"    # Landroid/graphics/Rect;

    .prologue
    .line 2056
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    .line 2059
    return-void
.end method

.method private reverseFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 19
    .param p1, "pf"    # Landroid/graphics/Rect;
    .param p2, "df"    # Landroid/graphics/Rect;
    .param p3, "of"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;
    .param p5, "vf"    # Landroid/graphics/Rect;
    .param p6, "dcf"    # Landroid/graphics/Rect;
    .param p7, "sf"    # Landroid/graphics/Rect;
    .param p8, "osf"    # Landroid/graphics/Rect;

    .prologue
    .line 2953
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2954
    .local v6, "reversePF":Landroid/graphics/Rect;
    iget v9, p1, Landroid/graphics/Rect;->top:I

    iput v9, v6, Landroid/graphics/Rect;->left:I

    .line 2955
    iget v9, p1, Landroid/graphics/Rect;->left:I

    iput v9, v6, Landroid/graphics/Rect;->top:I

    .line 2956
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    iput v9, v6, Landroid/graphics/Rect;->right:I

    .line 2957
    iget v9, p1, Landroid/graphics/Rect;->right:I

    iput v9, v6, Landroid/graphics/Rect;->bottom:I

    .line 2958
    invoke-virtual {p1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2960
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2961
    .local v3, "reverseDF":Landroid/graphics/Rect;
    iget v9, p2, Landroid/graphics/Rect;->top:I

    iput v9, v3, Landroid/graphics/Rect;->left:I

    .line 2962
    iget v9, p2, Landroid/graphics/Rect;->left:I

    iput v9, v3, Landroid/graphics/Rect;->top:I

    .line 2963
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    iput v9, v3, Landroid/graphics/Rect;->right:I

    .line 2964
    iget v9, p2, Landroid/graphics/Rect;->right:I

    iput v9, v3, Landroid/graphics/Rect;->bottom:I

    .line 2965
    invoke-virtual {p2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2967
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2968
    .local v4, "reverseOF":Landroid/graphics/Rect;
    iget v9, p3, Landroid/graphics/Rect;->top:I

    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 2969
    iget v9, p3, Landroid/graphics/Rect;->left:I

    iput v9, v4, Landroid/graphics/Rect;->top:I

    .line 2970
    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    iput v9, v4, Landroid/graphics/Rect;->right:I

    .line 2971
    iget v9, p3, Landroid/graphics/Rect;->right:I

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    .line 2972
    invoke-virtual {p3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2974
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2975
    .local v1, "reverseCF":Landroid/graphics/Rect;
    iget v9, p4, Landroid/graphics/Rect;->top:I

    iput v9, v1, Landroid/graphics/Rect;->left:I

    .line 2976
    iget v9, p4, Landroid/graphics/Rect;->left:I

    iput v9, v1, Landroid/graphics/Rect;->top:I

    .line 2977
    iget v9, p4, Landroid/graphics/Rect;->bottom:I

    iput v9, v1, Landroid/graphics/Rect;->right:I

    .line 2978
    iget v9, p4, Landroid/graphics/Rect;->right:I

    iput v9, v1, Landroid/graphics/Rect;->bottom:I

    .line 2979
    invoke-virtual {p4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2981
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 2982
    .local v8, "reverseVF":Landroid/graphics/Rect;
    iget v9, p5, Landroid/graphics/Rect;->top:I

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 2983
    iget v9, p5, Landroid/graphics/Rect;->left:I

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 2984
    iget v9, p5, Landroid/graphics/Rect;->bottom:I

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 2985
    iget v9, p5, Landroid/graphics/Rect;->right:I

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 2986
    invoke-virtual {p5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2988
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2989
    .local v2, "reverseDCF":Landroid/graphics/Rect;
    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->top:I

    iput v9, v2, Landroid/graphics/Rect;->left:I

    .line 2990
    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iput v9, v2, Landroid/graphics/Rect;->top:I

    .line 2991
    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iput v9, v2, Landroid/graphics/Rect;->right:I

    .line 2992
    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->right:I

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    .line 2993
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2995
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 2996
    .local v7, "reverseSF":Landroid/graphics/Rect;
    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Rect;->top:I

    iput v9, v7, Landroid/graphics/Rect;->left:I

    .line 2997
    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iput v9, v7, Landroid/graphics/Rect;->top:I

    .line 2998
    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iput v9, v7, Landroid/graphics/Rect;->right:I

    .line 2999
    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Rect;->right:I

    iput v9, v7, Landroid/graphics/Rect;->bottom:I

    .line 3000
    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3002
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 3003
    .local v5, "reverseOSF":Landroid/graphics/Rect;
    move-object/from16 v0, p8

    iget v9, v0, Landroid/graphics/Rect;->top:I

    iput v9, v5, Landroid/graphics/Rect;->left:I

    .line 3004
    move-object/from16 v0, p8

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iput v9, v5, Landroid/graphics/Rect;->top:I

    .line 3005
    move-object/from16 v0, p8

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iput v9, v5, Landroid/graphics/Rect;->right:I

    .line 3006
    move-object/from16 v0, p8

    iget v9, v0, Landroid/graphics/Rect;->right:I

    iput v9, v5, Landroid/graphics/Rect;->bottom:I

    .line 3007
    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3008
    return-void
.end method

.method private setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "newOverrideConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1734
    iput-object p1, p0, mConfiguration:Landroid/content/res/Configuration;

    .line 1735
    iput-object p2, p0, mOverrideConfig:Landroid/content/res/Configuration;

    .line 1736
    const/4 v0, 0x0

    iput-boolean v0, p0, mConfigHasChanged:Z

    .line 1737
    return-void
.end method

.method private setScaleToastFrame(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2897
    iput-object p1, p0, mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    .line 2898
    return-void
.end method

.method private setSplitToastStack(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2890
    iget-object v0, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, -0x52

    if-nez v0, :cond_1a

    iget-object v0, p1, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1a

    iget-object v0, p1, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1a

    .line 2892
    iget-object v0, p1, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iput-object v0, p0, mSplitToastStack:Lcom/android/server/wm/TaskStack;

    .line 2894
    :cond_1a
    return-void
.end method

.method private updateToastFrame()V
    .registers 10

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 2901
    iget-object v6, p0, mSplitToastStack:Lcom/android/server/wm/TaskStack;

    if-eqz v6, :cond_16

    .line 2902
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2903
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v6, p0, mSplitToastStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 2904
    iget-object v6, p0, mSplitToastFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2950
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_15
    :goto_15
    return-void

    .line 2905
    :cond_16
    iget-object v6, p0, mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_15

    iget-object v6, p0, mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_15

    iget-object v6, p0, mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    iget-object v7, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    if-eq v6, v7, :cond_15

    iget-object v6, p0, mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    const/16 v7, 0x800

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, p0, mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_15

    .line 2913
    iget-object v6, p0, mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, isFloating()Z

    move-result v6

    if-eqz v6, :cond_e4

    .line 2914
    iget-object v6, p0, mScaleToastFrame:Landroid/graphics/Rect;

    iget-object v7, p0, mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2919
    :goto_5a
    iget-object v6, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_da

    .line 2920
    iget-object v6, p0, mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, getStackBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 2921
    .local v3, "stackBounds":Landroid/graphics/Rect;
    iget v4, p0, mHScale:F

    .line 2922
    .local v4, "tempHScale":F
    iget v5, p0, mVScale:F

    .line 2924
    .local v5, "tempVScale":F
    iget-object v6, p0, mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    iget v6, v6, mHScale:F

    iput v6, p0, mFloatingAppHScale:F

    iput v6, p0, mHScale:F

    .line 2925
    iget-object v6, p0, mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    iget v6, v6, mVScale:F

    iput v6, p0, mFloatingAppVScale:F

    iput v6, p0, mVScale:F

    .line 2928
    iget v6, p0, mDssScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_90

    .line 2929
    iget v6, p0, mHScale:F

    iget v7, p0, mDssScale:F

    mul-float/2addr v6, v7

    iput v6, p0, mHScale:F

    .line 2930
    iget v6, p0, mVScale:F

    iget v7, p0, mDssScale:F

    mul-float/2addr v6, v7

    iput v6, p0, mVScale:F

    .line 2935
    :cond_90
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2936
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_da

    .line 2937
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 2938
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v2, :cond_da

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v6, v7, :cond_b2

    iget v6, v2, Landroid/view/DisplayInfo;->appWidth:I

    iget v7, v2, Landroid/view/DisplayInfo;->appHeight:I

    if-lt v6, v7, :cond_c2

    :cond_b2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v6, v7, :cond_da

    iget v6, v2, Landroid/view/DisplayInfo;->appWidth:I

    iget v7, v2, Landroid/view/DisplayInfo;->appHeight:I

    if-le v6, v7, :cond_da

    .line 2941
    :cond_c2
    iget-object v6, p0, mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    iget v6, v6, mHScale:F

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_d2

    iget-object v6, p0, mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    iget v6, v6, mVScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_da

    .line 2942
    :cond_d2
    iput v4, p0, mFloatingAppHScale:F

    iput v4, p0, mHScale:F

    .line 2943
    iput v5, p0, mFloatingAppVScale:F

    iput v5, p0, mVScale:F

    .line 2948
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v3    # "stackBounds":Landroid/graphics/Rect;
    .end local v4    # "tempHScale":F
    .end local v5    # "tempVScale":F
    :cond_da
    iget-object v6, p0, mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v6, v6, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    iput v6, p0, mToastRequestedOrientation:I

    goto/16 :goto_15

    .line 2916
    :cond_e4
    iget-object v6, p0, mScaleToastFrame:Landroid/graphics/Rect;

    iget-object v7, p0, mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_5a
.end method


# virtual methods
.method attach()V
    .registers 2

    .prologue
    .line 651
    iget-object v0, p0, mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowAddedLocked()V

    .line 652
    return-void
.end method

.method public final canReceiveKeys()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1788
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x834

    if-eq v1, v2, :cond_17

    iget-object v1, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x836

    if-ne v1, v2, :cond_18

    .line 1804
    :cond_17
    :goto_17
    return v0

    .line 1795
    :cond_18
    invoke-virtual {p0}, getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1796
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v1, v2, :cond_17

    invoke-virtual {p0}, getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1804
    :cond_35
    invoke-virtual {p0}, isVisibleOrAdding()Z

    move-result v1

    if-eqz v1, :cond_17

    iget v1, p0, mViewVisibility:I

    if-nez v1, :cond_17

    iget-object v1, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_17

    const/4 v0, 0x1

    goto :goto_17
.end method

.method public computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 53
    .param p1, "pf"    # Landroid/graphics/Rect;
    .param p2, "df"    # Landroid/graphics/Rect;
    .param p3, "of"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;
    .param p5, "vf"    # Landroid/graphics/Rect;
    .param p6, "dcf"    # Landroid/graphics/Rect;
    .param p7, "sf"    # Landroid/graphics/Rect;
    .param p8, "osf"    # Landroid/graphics/Rect;

    .prologue
    .line 667
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mHaveFrame:Z

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3c

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5b2

    .line 672
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ge v2, v5, :cond_3c

    .line 673
    if-nez p8, :cond_5ae

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    :goto_29
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v10}, reverseFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 684
    :cond_3c
    :goto_3c
    const/high16 v33, 0x3f800000    # 1.0f

    .line 685
    .local v33, "resolutionFactorF":F
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x1000000

    and-int/2addr v2, v5

    if-eqz v2, :cond_be

    .line 687
    const/16 v34, 0x0

    .line 688
    .local v34, "runDss":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsAdss:Z

    if-eqz v2, :cond_620

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_5e5

    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v5, "SurfaceView"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e5

    .line 690
    const/16 v34, 0x1

    .line 704
    :cond_6d
    :goto_6d
    if-eqz v34, :cond_be

    .line 705
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, mDssScale:F

    div-float v33, v2, v5

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_8b

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget v2, v2, mHScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_8b

    .line 709
    const/high16 v33, 0x3f800000    # 1.0f

    .line 712
    :cond_8b
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 713
    move-object/from16 v0, p2

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 714
    move-object/from16 v0, p4

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 715
    move-object/from16 v0, p6

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 716
    move-object/from16 v0, p5

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 717
    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 718
    if-eqz p8, :cond_be

    .line 719
    move-object/from16 v0, p8

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 725
    .end local v34    # "runDss":Z
    :cond_be
    const/16 v26, 0x0

    .line 728
    .local v26, "isScaleApply":Z
    move-object/from16 v0, p0

    iget-object v2, v0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_624

    invoke-virtual/range {p0 .. p0}, getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v36

    .line 729
    .local v36, "stack":Lcom/android/server/wm/TaskStack;
    :goto_ca
    if-eqz v36, :cond_628

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    move-result v2

    if-nez v2, :cond_628

    const/16 v28, 0x1

    .line 730
    .local v28, "nonFullscreenStack":Z
    :goto_d4
    if-eqz v28, :cond_97b

    .line 733
    invoke-virtual/range {p0 .. p0}, getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v27

    .line 734
    .local v27, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v40, 0x0

    .line 735
    .local v40, "typeSplit":Z
    const/16 v39, 0x0

    .line 736
    .local v39, "typeCascade":Z
    const/16 v30, 0x0

    .line 737
    .local v30, "optionScale":Z
    const/16 v29, 0x0

    .line 738
    .local v29, "optionMinimize":Z
    invoke-virtual/range {p0 .. p0}, isFloating()Z

    move-result v25

    .line 739
    .local v25, "isFloating":Z
    const/high16 v2, 0x200000

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v20

    .line 740
    .local v20, "fullScreenOnly":Z
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_62c

    const/4 v12, 0x1

    .line 742
    .local v12, "absLayout":Z
    :goto_f9
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_104

    .line 744
    const/4 v12, 0x1

    .line 746
    :cond_104
    if-nez v12, :cond_11f

    if-nez v20, :cond_11f

    .line 747
    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v40

    .line 748
    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v39

    .line 749
    const/16 v2, 0x800

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v30

    .line 750
    const/4 v2, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v29

    .line 752
    :cond_11f
    move/from16 v26, v30

    .line 754
    move-object/from16 v0, p0

    iget-boolean v2, v0, mLayoutAttached:Z

    if-nez v2, :cond_12b

    if-nez v12, :cond_12b

    if-eqz v20, :cond_62f

    .line 755
    :cond_12b
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 898
    :cond_134
    :goto_134
    if-eqz v39, :cond_951

    if-nez v25, :cond_13e

    move-object/from16 v0, p0

    iget-boolean v2, v0, mLayoutAttached:Z

    if-eqz v2, :cond_951

    :cond_13e
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_951

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 942
    .end local v12    # "absLayout":Z
    .end local v20    # "fullScreenOnly":Z
    .end local v25    # "isFloating":Z
    .end local v27    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v29    # "optionMinimize":Z
    .end local v30    # "optionScale":Z
    .end local v39    # "typeCascade":Z
    .end local v40    # "typeSplit":Z
    :cond_153
    :goto_153
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v32

    .line 943
    .local v32, "pw":I
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v31

    .line 946
    .local v31, "ph":I
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_a0b

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v2, :cond_9cb

    .line 948
    move/from16 v3, v32

    .line 954
    .local v3, "w":I
    :goto_177
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v2, :cond_9eb

    .line 955
    move/from16 v4, v31

    .line 979
    .local v4, "h":I
    :goto_181
    invoke-virtual/range {p0 .. p0}, getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v27

    .line 980
    .restart local v27    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_1a9

    move-object/from16 v0, p0

    iget-object v2, v0, mLastContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a9

    .line 981
    move-object/from16 v0, p0

    iget-object v2, v0, mLastContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 982
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mContentChanged:Z

    .line 985
    :cond_1a9
    move-object/from16 v0, p0

    iget-object v2, v0, mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c3

    .line 988
    move-object/from16 v0, p0

    iget-object v2, v0, mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 989
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mContentChanged:Z

    .line 991
    :cond_1c3
    move-object/from16 v0, p0

    iget v2, v0, mRequestedWidth:I

    move-object/from16 v0, p0

    iget v5, v0, mLastRequestedWidth:I

    if-ne v2, v5, :cond_1d7

    move-object/from16 v0, p0

    iget v2, v0, mRequestedHeight:I

    move-object/from16 v0, p0

    iget v5, v0, mLastRequestedHeight:I

    if-eq v2, v5, :cond_20d

    .line 992
    :cond_1d7
    move-object/from16 v0, p0

    iget v2, v0, mRequestedWidth:I

    move-object/from16 v0, p0

    iput v2, v0, mLastRequestedWidth:I

    .line 993
    move-object/from16 v0, p0

    iget v2, v0, mRequestedHeight:I

    move-object/from16 v0, p0

    iput v2, v0, mLastRequestedHeight:I

    .line 994
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mContentChanged:Z

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_208

    move-object/from16 v0, p0

    iget-object v2, v0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_20d

    move-object/from16 v0, p0

    iget-object v2, v0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_20d

    .line 998
    :cond_208
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mContentChanged:Z

    .line 1003
    :cond_20d
    move-object/from16 v0, p0

    iget-object v2, v0, mOverscanFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v2, v0, mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v2, v0, mDecorFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v2, v0, mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1008
    if-eqz p8, :cond_a59

    const/16 v22, 0x1

    .line 1009
    .local v22, "hasOutsets":Z
    :goto_23e
    if-eqz v22, :cond_249

    .line 1010
    move-object/from16 v0, p0

    iget-object v2, v0, mOutsetFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1013
    :cond_249
    move-object/from16 v0, p0

    iget-object v2, v0, mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v21

    .line 1014
    .local v21, "fw":I
    move-object/from16 v0, p0

    iget-object v2, v0, mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v19

    .line 1017
    .local v19, "fh":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, mEnforceSizeCompat:Z

    if-eqz v2, :cond_a5d

    .line 1018
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, mGlobalScale:F

    mul-float v42, v2, v5

    .line 1019
    .local v42, "x":F
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, mGlobalScale:F

    mul-float v43, v2, v5

    .line 1025
    .local v43, "y":F
    :goto_279
    if-eqz v28, :cond_27b

    .line 1033
    :cond_27b
    if-eqz v26, :cond_a74

    .line 1034
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_a71

    const/4 v11, 0x1

    .line 1035
    .local v11, "isSurfaceView":Z
    :goto_288
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v5, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    move/from16 v0, v32

    int-to-float v7, v0

    mul-float/2addr v6, v7

    add-float v6, v6, v42

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    move/from16 v0, v31

    int-to-float v8, v0

    mul-float/2addr v7, v8

    add-float v7, v7, v43

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v9, v0, mFloatingAppHScale:F

    move-object/from16 v0, p0

    iget v10, v0, mFloatingAppVScale:F

    invoke-static/range {v2 .. v11}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;FFZ)V

    .line 1047
    .end local v11    # "isSurfaceView":Z
    :goto_2bb
    if-eqz v26, :cond_aa1

    move-object/from16 v0, p0

    iget-object v2, v0, mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_aa1

    .line 1050
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v5, v0, mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v7, v0, mFloatingAppHScale:F

    move-object/from16 v0, p0

    iget v8, v0, mFloatingAppVScale:F

    invoke-static {v2, v5, v6, v7, v8}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;FF)V

    .line 1059
    :goto_2e2
    if-eqz v22, :cond_ab4

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, mOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mContentFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, mOutsetFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, mContentFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v7, v0, mOutsetFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, mOutsetFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v8, v0, mContentFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, mOutsetFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v9, v0, mContentFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1070
    :goto_333
    move-object/from16 v0, p0

    iget-object v2, v0, mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mContentFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, mContentFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v7, v0, mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, mContentFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v8, v0, mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, mContentFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v9, v0, mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v2, v0, mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mVisibleFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, mVisibleFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v7, v0, mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, mVisibleFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v8, v0, mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, mVisibleFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v9, v0, mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v2, v0, mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mStableFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, mStableFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v7, v0, mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, mStableFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v8, v0, mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, mStableFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v9, v0, mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v2, v0, mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mOverscanFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, mOverscanFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v7, v0, mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v8, v0, mOverscanFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v9, v0, mOverscanFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v2, v0, mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mContentFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, mContentFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v7, v0, mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v8, v0, mContentFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v9, v0, mContentFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v2, v0, mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mVisibleFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, mVisibleFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v7, v0, mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v8, v0, mVisibleFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v9, v0, mVisibleFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v2, v0, mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mStableFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, mStableFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v7, v0, mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v8, v0, mStableFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v9, v0, mStableFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v2, v0, mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1106
    move-object/from16 v0, p0

    iget-boolean v2, v0, mEnforceSizeCompat:Z

    if-eqz v2, :cond_56f

    .line 1110
    move-object/from16 v0, p0

    iget-object v2, v0, mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, mInvGlobalScale:F

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, mInvGlobalScale:F

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v2, v0, mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, mInvGlobalScale:F

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v2, v0, mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, mInvGlobalScale:F

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v2, v0, mOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, mInvGlobalScale:F

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v2, v0, mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, mInvGlobalScale:F

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 1121
    :cond_56f
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsWallpaper:Z

    if-eqz v2, :cond_5a9

    move-object/from16 v0, p0

    iget-object v2, v0, mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    move/from16 v0, v21

    if-ne v0, v2, :cond_58d

    move-object/from16 v0, p0

    iget-object v2, v0, mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    move/from16 v0, v19

    if-eq v0, v2, :cond_5a9

    .line 1122
    :cond_58d
    invoke-virtual/range {p0 .. p0}, getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v17

    .line 1123
    .local v17, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v17, :cond_5a9

    .line 1124
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v18

    .line 1125
    .local v18, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v18

    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 1130
    .end local v17    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v18    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_5a9
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYOUT:Z

    if-nez v2, :cond_ac1

    .line 1139
    :goto_5ad
    return-void

    .end local v3    # "w":I
    .end local v4    # "h":I
    .end local v19    # "fh":I
    .end local v21    # "fw":I
    .end local v22    # "hasOutsets":Z
    .end local v26    # "isScaleApply":Z
    .end local v27    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v28    # "nonFullscreenStack":Z
    .end local v31    # "ph":I
    .end local v32    # "pw":I
    .end local v33    # "resolutionFactorF":F
    .end local v36    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v42    # "x":F
    .end local v43    # "y":F
    :cond_5ae
    move-object/from16 v10, p8

    .line 673
    goto/16 :goto_29

    .line 675
    :cond_5b2
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3c

    .line 676
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v2, v5, :cond_3c

    .line 677
    if-nez p8, :cond_5e2

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    :goto_5cd
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v10}, reverseFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3c

    :cond_5e2
    move-object/from16 v10, p8

    goto :goto_5cd

    .line 693
    .restart local v33    # "resolutionFactorF":F
    .restart local v34    # "runDss":Z
    :cond_5e5
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_5e7
    move-object/from16 v0, p0

    iget-object v2, v0, mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_6d

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, mChildWindows:Lcom/android/server/wm/WindowList;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 695
    .local v16, "cwin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_61d

    move-object/from16 v0, v16

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v5, "SurfaceView"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61d

    .line 696
    const/16 v34, 0x1

    .line 697
    goto/16 :goto_6d

    .line 693
    :cond_61d
    add-int/lit8 v23, v23, 0x1

    goto :goto_5e7

    .line 702
    .end local v16    # "cwin":Lcom/android/server/wm/WindowState;
    .end local v23    # "i":I
    :cond_620
    const/16 v34, 0x1

    goto/16 :goto_6d

    .line 728
    .end local v34    # "runDss":Z
    .restart local v26    # "isScaleApply":Z
    :cond_624
    const/16 v36, 0x0

    goto/16 :goto_ca

    .line 729
    .restart local v36    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_628
    const/16 v28, 0x0

    goto/16 :goto_d4

    .line 740
    .restart local v20    # "fullScreenOnly":Z
    .restart local v25    # "isFloating":Z
    .restart local v27    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v28    # "nonFullscreenStack":Z
    .restart local v29    # "optionMinimize":Z
    .restart local v30    # "optionScale":Z
    .restart local v39    # "typeCascade":Z
    .restart local v40    # "typeSplit":Z
    :cond_62c
    const/4 v12, 0x0

    goto/16 :goto_f9

    .line 756
    .restart local v12    # "absLayout":Z
    :cond_62f
    if-eqz v40, :cond_726

    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x62

    if-eq v2, v5, :cond_726

    .line 760
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 761
    .local v15, "contentFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, v15}, Landroid/view/WindowManagerPolicy;->getContentRectLw(Landroid/graphics/Rect;)V

    .line 763
    new-instance v37, Landroid/graphics/Rect;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/Rect;-><init>()V

    .line 764
    .local v37, "stackBounds":Landroid/graphics/Rect;
    invoke-virtual/range {v36 .. v37}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 774
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    if-eqz v2, :cond_6fc

    const/16 v35, 0x1

    .line 775
    .local v35, "screenRotationAnimation":Z
    :goto_670
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    .line 776
    .local v24, "imeWin":Lcom/android/server/wm/WindowState;
    if-eqz v24, :cond_712

    invoke-virtual/range {v24 .. v24}, isVisibleNow()Z

    move-result v2

    if-eqz v2, :cond_712

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_698

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, isAttachedTo(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-eqz v2, :cond_712

    :cond_698
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentInputMethodClient:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_6a4

    if-eqz v35, :cond_712

    :cond_6a4
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    if-le v2, v5, :cond_712

    invoke-virtual/range {v24 .. v24}, isDrawFinishedLw()Z

    move-result v2

    if-eqz v2, :cond_712

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v6, v0, mContainingFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_6d5

    .line 783
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 785
    :cond_6d5
    if-eqz v25, :cond_700

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 798
    :cond_6df
    :goto_6df
    const/4 v13, 0x1

    .line 799
    .local v13, "applyShownBound":Z
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/TaskStack;->getTopOpaqueAppWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6ed

    .line 800
    const/4 v13, 0x0

    .line 803
    :cond_6ed
    if-nez v25, :cond_134

    if-eqz v13, :cond_134

    .line 804
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->setShownBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_134

    .line 774
    .end local v13    # "applyShownBound":Z
    .end local v24    # "imeWin":Lcom/android/server/wm/WindowState;
    .end local v35    # "screenRotationAnimation":Z
    :cond_6fc
    const/16 v35, 0x0

    goto/16 :goto_670

    .line 788
    .restart local v24    # "imeWin":Lcom/android/server/wm/WindowState;
    .restart local v35    # "screenRotationAnimation":Z
    :cond_700
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mContainingFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_6df

    .line 791
    :cond_712
    if-eqz v25, :cond_6df

    .line 792
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/TaskStack;->getTopOpaqueAppWindow()Lcom/android/server/wm/WindowState;

    move-result-object v41

    .line 793
    .local v41, "win":Lcom/android/server/wm/WindowState;
    if-eqz v41, :cond_6df

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v41

    iget-object v5, v0, mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6df

    .line 806
    .end local v15    # "contentFrame":Landroid/graphics/Rect;
    .end local v24    # "imeWin":Lcom/android/server/wm/WindowState;
    .end local v35    # "screenRotationAnimation":Z
    .end local v37    # "stackBounds":Landroid/graphics/Rect;
    .end local v41    # "win":Lcom/android/server/wm/WindowState;
    :cond_726
    if-eqz v39, :cond_946

    .line 808
    const/16 v2, -0x2710

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p4

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p4

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 809
    const/16 v2, 0x2710

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p4

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p4

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 811
    if-eqz v25, :cond_7a3

    .line 812
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/TaskStack;->getTopOpaqueAppWindow()Lcom/android/server/wm/WindowState;

    move-result-object v41

    .line 813
    .restart local v41    # "win":Lcom/android/server/wm/WindowState;
    if-eqz v41, :cond_781

    .line 814
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v41

    iget-object v5, v0, mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_134

    .line 816
    :cond_781
    new-instance v37, Landroid/graphics/Rect;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/Rect;-><init>()V

    .line 817
    .restart local v37    # "stackBounds":Landroid/graphics/Rect;
    invoke-virtual/range {v36 .. v37}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v37

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v37

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/16 :goto_134

    .line 822
    .end local v37    # "stackBounds":Landroid/graphics/Rect;
    .end local v41    # "win":Lcom/android/server/wm/WindowState;
    :cond_7a3
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 823
    .restart local v15    # "contentFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, v15}, Landroid/view/WindowManagerPolicy;->getContentRectLw(Landroid/graphics/Rect;)V

    .line 825
    new-instance v37, Landroid/graphics/Rect;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/Rect;-><init>()V

    .line 826
    .restart local v37    # "stackBounds":Landroid/graphics/Rect;
    invoke-virtual/range {v36 .. v37}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Landroid/view/WindowManagerPolicy;->getFloatingStatusBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v38

    .line 829
    .local v38, "statusBarHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v37

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, mDssScale:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, v37

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, mDssScale:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    move/from16 v0, v38

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v7, v0, mDssScale:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x62

    if-ne v2, v5, :cond_82b

    .line 843
    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v2, v5, :cond_927

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v37

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, mDssScale:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, v37

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, mDssScale:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 864
    :cond_82b
    :goto_82b
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    .line 865
    .restart local v24    # "imeWin":Lcom/android/server/wm/WindowState;
    if-eqz v24, :cond_8f1

    invoke-virtual/range {v24 .. v24}, isVisibleNow()Z

    move-result v2

    if-eqz v2, :cond_8f1

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_8f1

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, getStackId()I

    move-result v2

    move-object/from16 v0, v36

    iget v5, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v2, v5, :cond_8f1

    move-object/from16 v0, v37

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    if-le v2, v5, :cond_8f1

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentInputMethodClient:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_8f1

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentInputMethodClient:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, getStackId()I

    move-result v2

    move-object/from16 v0, v36

    iget v5, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v2, v5, :cond_8f1

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v37

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 873
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-ge v2, v5, :cond_899

    .line 874
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 876
    :cond_899
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mContainingFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, mVScale:F

    div-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 877
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, mVScale:F

    div-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v2, v5

    move-object/from16 v0, p4

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 881
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_8f1

    .line 882
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-interface {v5, v0, v6}, Landroid/view/WindowManagerPolicy;->getCocktailBarFrame(Landroid/view/WindowManagerPolicy$WindowState;Z)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 889
    :cond_8f1
    new-instance v14, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    invoke-direct {v14, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 890
    .local v14, "bounds":Landroid/graphics/Rect;
    iget v2, v14, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, mHScale:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v2, v5

    iput v2, v14, Landroid/graphics/Rect;->right:I

    .line 891
    iget v2, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, mVScale:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v2, v5

    iput v2, v14, Landroid/graphics/Rect;->bottom:I

    .line 892
    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Lcom/android/server/wm/TaskStack;->setShownBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_134

    .line 854
    .end local v14    # "bounds":Landroid/graphics/Rect;
    .end local v24    # "imeWin":Lcom/android/server/wm/WindowState;
    :cond_927
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v37

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, mDssScale:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, v37

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, mDssScale:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/16 :goto_82b

    .line 895
    .end local v15    # "contentFrame":Landroid/graphics/Rect;
    .end local v37    # "stackBounds":Landroid/graphics/Rect;
    .end local v38    # "statusBarHeight":I
    :cond_946
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_134

    .line 902
    :cond_951
    if-eqz v40, :cond_970

    move-object/from16 v0, p0

    iget-boolean v2, v0, mLayoutAttached:Z

    if-eqz v2, :cond_970

    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_970

    .line 904
    move-object/from16 v0, p0

    iget-object v2, v0, mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_153

    .line 906
    :cond_970
    move-object/from16 v0, p0

    iget-object v2, v0, mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_153

    .line 925
    .end local v12    # "absLayout":Z
    .end local v20    # "fullScreenOnly":Z
    .end local v25    # "isFloating":Z
    .end local v27    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v29    # "optionMinimize":Z
    .end local v30    # "optionScale":Z
    .end local v39    # "typeCascade":Z
    .end local v40    # "typeSplit":Z
    :cond_97b
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 926
    move-object/from16 v0, p0

    iget-object v2, v0, mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 930
    invoke-direct/range {p0 .. p0}, updateToastFrame()V

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, mSplitToastFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9a7

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mSplitToastFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_153

    .line 933
    :cond_9a7
    move-object/from16 v0, p0

    iget-object v2, v0, mScaleToastFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_153

    .line 934
    move-object/from16 v0, p0

    iget-object v2, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mScaleToastFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 936
    const/16 v26, 0x1

    goto/16 :goto_153

    .line 949
    .restart local v31    # "ph":I
    .restart local v32    # "pw":I
    :cond_9cb
    move-object/from16 v0, p0

    iget-boolean v2, v0, mEnforceSizeCompat:Z

    if-eqz v2, :cond_9e3

    .line 950
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, mGlobalScale:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v3, v2

    .restart local v3    # "w":I
    goto/16 :goto_177

    .line 952
    .end local v3    # "w":I
    :cond_9e3
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .restart local v3    # "w":I
    goto/16 :goto_177

    .line 956
    :cond_9eb
    move-object/from16 v0, p0

    iget-boolean v2, v0, mEnforceSizeCompat:Z

    if-eqz v2, :cond_a03

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, mGlobalScale:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v4, v2

    .restart local v4    # "h":I
    goto/16 :goto_181

    .line 959
    .end local v4    # "h":I
    :cond_a03
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .restart local v4    # "h":I
    goto/16 :goto_181

    .line 962
    .end local v3    # "w":I
    .end local v4    # "h":I
    :cond_a0b
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_a23

    .line 963
    move/from16 v3, v32

    .line 969
    .restart local v3    # "w":I
    :goto_a16
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_a3d

    .line 970
    move/from16 v4, v31

    .restart local v4    # "h":I
    goto/16 :goto_181

    .line 964
    .end local v3    # "w":I
    .end local v4    # "h":I
    :cond_a23
    move-object/from16 v0, p0

    iget-boolean v2, v0, mEnforceSizeCompat:Z

    if-eqz v2, :cond_a38

    .line 965
    move-object/from16 v0, p0

    iget v2, v0, mRequestedWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, mGlobalScale:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v3, v2

    .restart local v3    # "w":I
    goto :goto_a16

    .line 967
    .end local v3    # "w":I
    :cond_a38
    move-object/from16 v0, p0

    iget v3, v0, mRequestedWidth:I

    .restart local v3    # "w":I
    goto :goto_a16

    .line 971
    :cond_a3d
    move-object/from16 v0, p0

    iget-boolean v2, v0, mEnforceSizeCompat:Z

    if-eqz v2, :cond_a53

    .line 972
    move-object/from16 v0, p0

    iget v2, v0, mRequestedHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, mGlobalScale:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v4, v2

    .restart local v4    # "h":I
    goto/16 :goto_181

    .line 974
    .end local v4    # "h":I
    :cond_a53
    move-object/from16 v0, p0

    iget v4, v0, mRequestedHeight:I

    .restart local v4    # "h":I
    goto/16 :goto_181

    .line 1008
    .restart local v27    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_a59
    const/16 v22, 0x0

    goto/16 :goto_23e

    .line 1021
    .restart local v19    # "fh":I
    .restart local v21    # "fw":I
    .restart local v22    # "hasOutsets":Z
    :cond_a5d
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v2

    move/from16 v42, v0

    .line 1022
    .restart local v42    # "x":F
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v2

    move/from16 v43, v0

    .restart local v43    # "y":F
    goto/16 :goto_279

    .line 1034
    :cond_a71
    const/4 v11, 0x0

    goto/16 :goto_288

    .line 1041
    :cond_a74
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v5, v0, mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    move/from16 v0, v32

    int-to-float v7, v0

    mul-float/2addr v6, v7

    add-float v6, v6, v42

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    move/from16 v0, v31

    int-to-float v8, v0

    mul-float/2addr v7, v8

    add-float v7, v7, v43

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, mFrame:Landroid/graphics/Rect;

    invoke-static/range {v2 .. v8}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto/16 :goto_2bb

    .line 1055
    :cond_aa1
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v5, v0, mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, mFrame:Landroid/graphics/Rect;

    invoke-static {v2, v5, v6}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_2e2

    .line 1065
    :cond_ab4
    move-object/from16 v0, p0

    iget-object v2, v0, mOutsets:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_333

    .line 1130
    :cond_ac1
    const-string v2, "WindowState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resolving (mRequestedWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, mRequestedWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRequestedheight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, mRequestedHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") to"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (pw="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ph="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): frame="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ci="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5ad
.end method

.method public disableHideSViewCoverOnce(Z)V
    .registers 3
    .param p1, "hide"    # Z

    .prologue
    .line 2478
    iget-object v0, p0, mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean p1, v0, Lcom/android/server/wm/WindowToken;->disableHideSViewCoverOnce:Z

    .line 2479
    return-void
.end method

.method disposeInputChannel()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1749
    iget-object v0, p0, mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_15

    .line 1750
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 1752
    iget-object v0, p0, mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 1753
    iput-object v2, p0, mInputChannel:Landroid/view/InputChannel;

    .line 1756
    :cond_15
    iget-object v0, p0, mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object v2, v0, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 1757
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    const/high16 v9, -0x80000000

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    .line 2488
    invoke-virtual {p0}, getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 2489
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mDisplayId="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, getDisplayId()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2490
    if-eqz v1, :cond_26

    .line 2491
    const-string v4, " stackId="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2493
    :cond_26
    const-string v4, " mSession="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mSession:Lcom/android/server/wm/Session;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2494
    const-string v4, " mClient="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mClient:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2495
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mOwnerUid="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, mOwnerUid:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2496
    const-string v4, " mShowToOwnerOnly="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mShowToOwnerOnly:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2497
    const-string v4, " package="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2498
    const-string v4, " appop="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, mAppOp:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2499
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mAttrs="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2500
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Requested w="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, mRequestedWidth:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2501
    const-string v4, " h="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, mRequestedHeight:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2502
    const-string v4, " mLayoutSeq="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, mLayoutSeq:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2503
    iget v4, p0, mRequestedWidth:I

    iget v5, p0, mLastRequestedWidth:I

    if-ne v4, v5, :cond_ab

    iget v4, p0, mRequestedHeight:I

    iget v5, p0, mLastRequestedHeight:I

    if-eq v4, v5, :cond_c2

    .line 2504
    :cond_ab
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "LastRequested w="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, mLastRequestedWidth:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2505
    const-string v4, " h="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, mLastRequestedHeight:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2507
    :cond_c2
    iget-object v4, p0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_ca

    iget-boolean v4, p0, mLayoutAttached:Z

    if-eqz v4, :cond_e2

    .line 2508
    :cond_ca
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mAttachedWindow="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2509
    const-string v4, " mLayoutAttached="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mLayoutAttached:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2511
    :cond_e2
    iget-boolean v4, p0, mIsImWindow:Z

    if-nez v4, :cond_ee

    iget-boolean v4, p0, mIsWallpaper:Z

    if-nez v4, :cond_ee

    iget-boolean v4, p0, mIsFloatingLayer:Z

    if-eqz v4, :cond_11a

    .line 2512
    :cond_ee
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mIsImWindow="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mIsImWindow:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2513
    const-string v4, " mIsWallpaper="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mIsWallpaper:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2514
    const-string v4, " mIsFloatingLayer="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mIsFloatingLayer:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2515
    const-string v4, " mWallpaperVisible="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mWallpaperVisible:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2517
    :cond_11a
    if-eqz p3, :cond_168

    .line 2518
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mBaseLayer="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, mBaseLayer:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2519
    const-string v4, " mSubLayer="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, mSubLayer:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2520
    const-string v4, " mAnimLayer="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, mLayer:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, "+"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2521
    iget-object v4, p0, mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_64a

    iget-object v4, p0, mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v4, v4, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    :goto_14d
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2524
    const-string v4, "="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2525
    const-string v4, " mLastLayer="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2527
    :cond_168
    if-eqz p3, :cond_1ec

    .line 2528
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mToken="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2529
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mRootToken="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mRootToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2530
    iget-object v4, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_198

    .line 2531
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mAppToken="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2533
    :cond_198
    iget-object v4, p0, mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_1aa

    .line 2534
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mTargetAppToken="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2536
    :cond_1aa
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mViewVisibility=0x"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2537
    iget v4, p0, mViewVisibility:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2538
    const-string v4, " mHaveFrame="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mHaveFrame:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2539
    const-string v4, " mObscured="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mObscured:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2540
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mSeq="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, mSeq:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2541
    const-string v4, " mSystemUiVisibility=0x"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2542
    iget v4, p0, mSystemUiVisibility:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2544
    :cond_1ec
    iget-boolean v4, p0, mPolicyVisibility:Z

    if-eqz v4, :cond_1fc

    iget-boolean v4, p0, mPolicyVisibilityAfterAnim:Z

    if-eqz v4, :cond_1fc

    iget-boolean v4, p0, mAppOpVisibility:Z

    if-eqz v4, :cond_1fc

    iget-boolean v4, p0, mAttachedHidden:Z

    if-eqz v4, :cond_228

    .line 2546
    :cond_1fc
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mPolicyVisibility="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2547
    iget-boolean v4, p0, mPolicyVisibility:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2548
    const-string v4, " mPolicyVisibilityAfterAnim="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2549
    iget-boolean v4, p0, mPolicyVisibilityAfterAnim:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2550
    const-string v4, " mAppOpVisibility="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2551
    iget-boolean v4, p0, mAppOpVisibility:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2552
    const-string v4, " mAttachedHidden="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mAttachedHidden:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2554
    :cond_228
    iget-boolean v4, p0, mRelayoutCalled:Z

    if-eqz v4, :cond_230

    iget-boolean v4, p0, mLayoutNeeded:Z

    if-eqz v4, :cond_248

    .line 2555
    :cond_230
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mRelayoutCalled="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mRelayoutCalled:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2556
    const-string v4, " mLayoutNeeded="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mLayoutNeeded:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2558
    :cond_248
    iget v4, p0, mXOffset:I

    if-nez v4, :cond_250

    iget v4, p0, mYOffset:I

    if-eqz v4, :cond_267

    .line 2559
    :cond_250
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Offsets x="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, mXOffset:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2560
    const-string v4, " y="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, mYOffset:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2562
    :cond_267
    if-eqz p3, :cond_2da

    .line 2563
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mGivenContentInsets="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2564
    iget-object v4, p0, mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2565
    const-string v4, " mGivenVisibleInsets="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2566
    iget-object v4, p0, mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2567
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2568
    iget v4, p0, mTouchableInsets:I

    if-nez v4, :cond_28c

    iget-boolean v4, p0, mGivenInsetsPending:Z

    if-eqz v4, :cond_2b8

    .line 2569
    :cond_28c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mTouchableInsets="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, mTouchableInsets:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2570
    const-string v4, " mGivenInsetsPending="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mGivenInsetsPending:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2571
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 2572
    .local v0, "region":Landroid/graphics/Region;
    invoke-virtual {p0, v0}, getTouchableRegion(Landroid/graphics/Region;)V

    .line 2573
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "touchable region="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2575
    .end local v0    # "region":Landroid/graphics/Region;
    :cond_2b8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mConfiguration="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2576
    iget-object v4, p0, mOverrideConfig:Landroid/content/res/Configuration;

    sget-object v5, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    if-eq v4, v5, :cond_2da

    .line 2577
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mOverrideConfig="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2580
    :cond_2da
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mHasSurface="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mHasSurface:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2581
    const-string v4, " mShownFrame="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mShownFrame:Landroid/graphics/RectF;

    invoke-virtual {v4, p1}, Landroid/graphics/RectF;->printShortString(Ljava/io/PrintWriter;)V

    .line 2582
    const-string v4, " isReadyForDisplay()="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, isReadyForDisplay()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2583
    if-eqz p3, :cond_348

    .line 2584
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mFrame="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2585
    const-string v4, " last="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2586
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2587
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mSystemDecorRect="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2588
    const-string v4, " last="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mLastSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2589
    iget-object v4, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    if-eqz v4, :cond_345

    .line 2590
    const-string v4, " mLastClipRect="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2591
    iget-object v4, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2593
    :cond_345
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2595
    :cond_348
    iget-boolean v4, p0, mEnforceSizeCompat:Z

    if-eqz v4, :cond_35d

    .line 2596
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mCompatFrame="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2597
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2599
    :cond_35d
    if-eqz p3, :cond_447

    .line 2600
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Frames: containing="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2601
    iget-object v4, p0, mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2602
    const-string v4, " parent="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2603
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2604
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    display="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2605
    const-string v4, " overscan="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mOverscanFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2606
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2607
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    content="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2608
    const-string v4, " visible="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2609
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2610
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    decor="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2611
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2612
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    outset="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mOutsetFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2613
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2614
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Cur insets: overscan="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2615
    iget-object v4, p0, mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2616
    const-string v4, " content="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2617
    const-string v4, " visible="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2618
    const-string v4, " stable="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2619
    const-string v4, " outsets="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2620
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2621
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Lst insets: overscan="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2622
    iget-object v4, p0, mLastOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2623
    const-string v4, " content="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mLastContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2624
    const-string v4, " visible="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mLastVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2625
    const-string v4, " stable="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mLastStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2626
    const-string v4, " physical="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mLastOutsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2627
    const-string v4, " outset="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mLastOutsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2628
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2630
    :cond_447
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2631
    iget-object v4, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5, p3}, Lcom/android/server/wm/WindowStateAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2632
    iget-boolean v4, p0, mExiting:Z

    if-nez v4, :cond_47c

    iget-boolean v4, p0, mRemoveOnExit:Z

    if-nez v4, :cond_47c

    iget-boolean v4, p0, mDestroying:Z

    if-nez v4, :cond_47c

    iget-boolean v4, p0, mRemoved:Z

    if-eqz v4, :cond_4a8

    .line 2633
    :cond_47c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mExiting="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mExiting:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2634
    const-string v4, " mRemoveOnExit="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mRemoveOnExit:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2635
    const-string v4, " mDestroying="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mDestroying:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2636
    const-string v4, " mRemoved="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mRemoved:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2638
    :cond_4a8
    iget-boolean v4, p0, mOrientationChanging:Z

    if-nez v4, :cond_4b4

    iget-boolean v4, p0, mAppFreezing:Z

    if-nez v4, :cond_4b4

    iget-boolean v4, p0, mTurnOnScreen:Z

    if-eqz v4, :cond_4d6

    .line 2639
    :cond_4b4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mOrientationChanging="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2640
    iget-boolean v4, p0, mOrientationChanging:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2641
    const-string v4, " mAppFreezing="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mAppFreezing:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2642
    const-string v4, " mTurnOnScreen="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mTurnOnScreen:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2644
    :cond_4d6
    iget v4, p0, mLastFreezeDuration:I

    if-eqz v4, :cond_4ec

    .line 2645
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mLastFreezeDuration="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2646
    iget v4, p0, mLastFreezeDuration:I

    int-to-long v4, v4

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2648
    :cond_4ec
    iget v4, p0, mHScale:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_4f8

    iget v4, p0, mVScale:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_510

    .line 2649
    :cond_4f8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mHScale="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, mHScale:F

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(F)V

    .line 2650
    const-string v4, " mVScale="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, mVScale:F

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(F)V

    .line 2652
    :cond_510
    iget v4, p0, mWallpaperX:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_51c

    iget v4, p0, mWallpaperY:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_534

    .line 2653
    :cond_51c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mWallpaperX="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, mWallpaperX:F

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(F)V

    .line 2654
    const-string v4, " mWallpaperY="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, mWallpaperY:F

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(F)V

    .line 2656
    :cond_534
    iget v4, p0, mWallpaperXStep:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_540

    iget v4, p0, mWallpaperYStep:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_558

    .line 2657
    :cond_540
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mWallpaperXStep="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, mWallpaperXStep:F

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(F)V

    .line 2658
    const-string v4, " mWallpaperYStep="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, mWallpaperYStep:F

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(F)V

    .line 2660
    :cond_558
    iget v4, p0, mWallpaperDisplayOffsetX:I

    if-ne v4, v9, :cond_560

    iget v4, p0, mWallpaperDisplayOffsetY:I

    if-eq v4, v9, :cond_578

    .line 2662
    :cond_560
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mWallpaperDisplayOffsetX="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2663
    iget v4, p0, mWallpaperDisplayOffsetX:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2664
    const-string v4, " mWallpaperDisplayOffsetY="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2665
    iget v4, p0, mWallpaperDisplayOffsetY:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2670
    :cond_578
    iget-boolean v4, p0, mHideBySViewCover:Z

    if-eqz v4, :cond_58a

    .line 2671
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mHideBySvc="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mHideBySViewCover:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2676
    :cond_58a
    iget-object v4, p0, mDrawLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_5aa

    .line 2677
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDrawLock="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mDrawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2681
    :cond_5aa
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mWaitingForOrientation="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mWaitingForOrientation:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2682
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "shouldHideWhileStartingWindowIsShown="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->shouldHideWhileStartingWindowIsShown(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2683
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mDelayedResize="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mDelayedResize:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2688
    invoke-virtual {p0}, getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    .line 2689
    .local v3, "windowType":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "windowType="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2690
    if-nez v3, :cond_659

    .line 2691
    const-string/jumbo v4, "normal"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2697
    :goto_5f3
    const-string v4, " : "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2698
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Current zone bounds="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2699
    invoke-virtual {p0}, getStackBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2700
    iget-object v4, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_637

    .line 2701
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Current stack bounds="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2702
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2703
    .local v2, "stackBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    if-eqz v4, :cond_630

    .line 2704
    invoke-virtual {p0}, getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 2706
    :cond_630
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2708
    .end local v2    # "stackBounds":Landroid/graphics/Rect;
    :cond_637
    iget-boolean v4, p0, mMultiWindowStyleChanging:Z

    if-eqz v4, :cond_649

    .line 2709
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mMultiWindowStyleChanging="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, mMultiWindowStyleChanging:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2722
    :cond_649
    return-void

    .line 2521
    .end local v3    # "windowType":I
    :cond_64a
    iget-object v4, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_656

    iget-object v4, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v4, v4, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    goto/16 :goto_14d

    :cond_656
    const/4 v4, 0x0

    goto/16 :goto_14d

    .line 2692
    .restart local v3    # "windowType":I
    :cond_659
    const/4 v4, 0x1

    if-ne v3, v4, :cond_663

    .line 2693
    const-string/jumbo v4, "split"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5f3

    .line 2695
    :cond_663
    const-string v4, "cascade"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5f3
.end method

.method public getAppToken()Landroid/view/IApplicationToken;
    .registers 2

    .prologue
    .line 1240
    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_9

    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getAppTokenTaskId()I
    .registers 2

    .prologue
    .line 3012
    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_b

    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getAttrs()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .prologue
    .line 1188
    iget-object v0, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getBaseType()I
    .registers 3

    .prologue
    .line 1231
    move-object v0, p0

    .line 1232
    .local v0, "win":Lcom/android/server/wm/WindowState;
    :goto_1
    iget-object v1, v0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_8

    .line 1233
    iget-object v0, v0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_1

    .line 1235
    :cond_8
    iget-object v1, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    return v1
.end method

.method public getContentFrameLw()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 1163
    iget-object v0, p0, mContentFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCoverMode()I
    .registers 3

    .prologue
    .line 2462
    iget-object v0, p0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1e

    .line 2463
    iget-object v0, p0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_27

    .line 2464
    iget-object v0, p0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x833

    if-ne v0, v1, :cond_17

    .line 2465
    const/16 v0, 0x10

    .line 2473
    :goto_16
    return v0

    .line 2467
    :cond_17
    iget-object v0, p0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    goto :goto_16

    .line 2469
    :cond_1e
    iget-object v0, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_27

    .line 2470
    iget-object v0, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    goto :goto_16

    .line 2473
    :cond_27
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 3

    .prologue
    .line 1259
    iget-object v1, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, mNotOnAppsDisplay:Z

    if-eqz v1, :cond_b

    .line 1260
    :cond_8
    iget-object v1, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1263
    :goto_a
    return-object v1

    .line 1262
    :cond_b
    invoke-virtual {p0}, getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 1263
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_14

    iget-object v1, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    goto :goto_a

    :cond_14
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_a
.end method

.method public getDisplayFrameLw()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 1153
    iget-object v0, p0, mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplayId()I
    .registers 3

    .prologue
    .line 1267
    invoke-virtual {p0}, getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1268
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_8

    .line 1269
    const/4 v1, -0x1

    .line 1271
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    goto :goto_7
.end method

.method public getDssScale()F
    .registers 2

    .prologue
    .line 2775
    iget v0, p0, mDssScale:F

    return v0
.end method

.method public getFrameLw()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 1143
    iget-object v0, p0, mFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenContentInsetsLw()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 1178
    iget-object v0, p0, mGivenContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenInsetsPendingLw()Z
    .registers 2

    .prologue
    .line 1173
    iget-boolean v0, p0, mGivenInsetsPending:Z

    return v0
.end method

.method public getGivenVisibleInsetsLw()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 1183
    iget-object v0, p0, mGivenVisibleInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    .prologue
    .line 2807
    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_b

    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getInputDispatchingTimeoutNanos()J
    .registers 3

    .prologue
    .line 1349
    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_9

    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-wide v0, v0, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    :goto_8
    return-wide v0

    :cond_9
    const-wide v0, 0x12a05f200L

    goto :goto_8
.end method

.method public getMainWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    .prologue
    .line 2882
    iget-object v1, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_b

    .line 2883
    iget-object v1, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2886
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 2

    .prologue
    .line 2752
    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, isDefaultDisplay()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    :goto_e
    return-object v0

    :cond_f
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    goto :goto_e
.end method

.method public getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 8
    .param p1, "bottom"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1193
    const/4 v0, -0x1

    .line 1194
    .local v0, "index":I
    move-object v2, p0

    .line 1195
    .local v2, "ws":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0}, getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v1

    .line 1197
    .local v1, "windows":Lcom/android/server/wm/WindowList;
    :goto_8
    iget-object v5, v2, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-eqz v5, :cond_18

    .line 1198
    iget-object v5, v2, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-ne v5, v3, :cond_16

    :goto_14
    move v4, v3

    .line 1213
    :cond_15
    return v4

    :cond_16
    move v3, v4

    .line 1198
    goto :goto_14

    .line 1202
    :cond_18
    if-eq v2, p1, :cond_15

    .line 1208
    if-gez v0, :cond_20

    .line 1209
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1211
    :cond_20
    add-int/lit8 v0, v0, -0x1

    .line 1212
    if-ltz v0, :cond_15

    .line 1215
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ws":Lcom/android/server/wm/WindowState;
    check-cast v2, Lcom/android/server/wm/WindowState;

    .restart local v2    # "ws":Lcom/android/server/wm/WindowState;
    goto :goto_8
.end method

.method public getOverscanFrameLw()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 1158
    iget-object v0, p0, mOverscanFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOwningPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 661
    iget-object v0, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwningUid()I
    .registers 2

    .prologue
    .line 656
    iget v0, p0, mOwnerUid:I

    return v0
.end method

.method public getRequestedHeightLw()I
    .registers 2

    .prologue
    .line 2823
    iget v0, p0, mRequestedHeight:I

    return v0
.end method

.method public getRequestedOrientation()I
    .registers 2

    .prologue
    .line 2812
    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_9

    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public getRequestedWidthLw()I
    .registers 2

    .prologue
    .line 2818
    iget v0, p0, mRequestedWidth:I

    return v0
.end method

.method public getScaleFactor()Landroid/graphics/PointF;
    .registers 4

    .prologue
    .line 2758
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, mHScale:F

    iget v2, p0, mVScale:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getShownFrameLw()Landroid/graphics/RectF;
    .registers 2

    .prologue
    .line 1148
    iget-object v0, p0, mShownFrame:Landroid/graphics/RectF;

    return-object v0
.end method

.method getStack()Lcom/android/server/wm/TaskStack;
    .registers 6

    .prologue
    .line 1275
    iget-object v2, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v2, :cond_15

    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 1276
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    :goto_8
    if-eqz v1, :cond_31

    .line 1277
    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 1278
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_31

    .line 1279
    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v2, :cond_18

    .line 1280
    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 1285
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :goto_14
    return-object v2

    .line 1275
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_15
    iget-object v1, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_8

    .line 1282
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    .restart local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_18
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStack: mStack null for task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_31
    iget-object v2, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    goto :goto_14
.end method

.method public getStackBounds()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 2763
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2764
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, getStackBounds(Landroid/graphics/Rect;)V

    .line 2765
    return-object v0
.end method

.method getStackBounds(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1300
    invoke-virtual {p0}, getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 1301
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_74

    .line 1302
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 1306
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isMultiWindowStack()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1307
    invoke-virtual {p0}, getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1308
    iget-object v2, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 1314
    :cond_20
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1315
    invoke-virtual {p0}, getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-nez v2, :cond_45

    .line 1316
    iget-boolean v2, v1, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    if-eqz v2, :cond_50

    .line 1322
    iget-object v2, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, v4, v3}, Landroid/view/WindowManagerPolicy;->getCocktailBarFrame(Landroid/view/WindowManagerPolicy$WindowState;Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 1323
    .local v0, "rect":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-lez v2, :cond_46

    .line 1324
    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1346
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_45
    :goto_45
    return-void

    .line 1325
    .restart local v0    # "rect":Landroid/graphics/Rect;
    :cond_46
    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_45

    .line 1326
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_45

    .line 1331
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_50
    iget-object v2, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v3, 0x1

    invoke-interface {v2, v4, v3}, Landroid/view/WindowManagerPolicy;->getCocktailBarFrame(Landroid/view/WindowManagerPolicy$WindowState;Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 1332
    .restart local v0    # "rect":Landroid/graphics/Rect;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 1333
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 1334
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 1335
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_45

    .line 1345
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_74
    iget-object v2, p0, mFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_45
.end method

.method public getStackId()I
    .registers 3

    .prologue
    .line 1290
    invoke-virtual {p0}, getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 1291
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_9

    .line 1292
    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 1294
    :goto_8
    return v1

    :cond_9
    const/4 v1, -0x1

    goto :goto_8
.end method

.method getSubWindowBounds()Landroid/graphics/Rect;
    .registers 6

    .prologue
    .line 3158
    const/4 v1, 0x0

    .line 3159
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v3, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_28

    .line 3160
    iget-object v3, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3161
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x62

    if-ne v3, v4, :cond_d

    .line 3162
    new-instance v1, Landroid/graphics/Rect;

    .end local v1    # "r":Landroid/graphics/Rect;
    iget-object v3, v2, mFrame:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3167
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    .restart local v1    # "r":Landroid/graphics/Rect;
    :cond_28
    return-object v1
.end method

.method public getSurfaceLayer()I
    .registers 2

    .prologue
    .line 1226
    iget v0, p0, mLayer:I

    return v0
.end method

.method public getSystemUiVisibility()I
    .registers 2

    .prologue
    .line 1221
    iget v0, p0, mSystemUiVisibility:I

    return v0
.end method

.method public getTargetAppTokenStackId()I
    .registers 3

    .prologue
    .line 3022
    iget-object v1, p0, mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_13

    .line 3023
    iget-object v1, p0, mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 3024
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_13

    .line 3025
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_13

    .line 3026
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 3030
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :goto_12
    return v1

    :cond_13
    const/4 v1, -0x1

    goto :goto_12
.end method

.method public getTargetAppTokenTaskId()I
    .registers 2

    .prologue
    .line 3017
    iget-object v0, p0, mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_b

    iget-object v0, p0, mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public bridge synthetic getTopFullWindowInSameTask()Landroid/view/WindowManagerPolicy$WindowState;
    .registers 2

    .prologue
    .line 124
    invoke-virtual {p0}, getTopFullWindowInSameTask()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method public getTopFullWindowInSameTask()Lcom/android/server/wm/WindowState;
    .registers 7

    .prologue
    .line 2841
    iget-object v5, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_35

    iget-object v5, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-nez v5, :cond_35

    .line 2842
    iget-object v5, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v5, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 2843
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_35

    .line 2844
    iget-object v4, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 2845
    .local v4, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 2846
    .local v1, "firstToken":I
    move v3, v1

    .local v3, "tokenNdx":I
    :goto_19
    if-ltz v3, :cond_35

    .line 2847
    invoke-virtual {v4, v3}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 2848
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v5, :cond_2d

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    if-nez v5, :cond_2d

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-nez v5, :cond_30

    .line 2846
    :cond_2d
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 2851
    :cond_30
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 2855
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "firstToken":I
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "tokenNdx":I
    .end local v4    # "tokens":Lcom/android/server/wm/AppTokenList;
    :goto_34
    return-object v5

    :cond_35
    invoke-virtual {p0}, getMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    goto :goto_34
.end method

.method public getTopPenWindowControllerInStack()Landroid/view/IApplicationToken;
    .registers 3

    .prologue
    .line 2860
    invoke-virtual {p0}, getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 2861
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/android/server/wm/TaskStack;->mTopPenWindowControllerToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_f

    .line 2862
    iget-object v1, v0, Lcom/android/server/wm/TaskStack;->mTopPenWindowControllerToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    .line 2864
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getTouchableRegion(Landroid/graphics/Region;)V
    .registers 15
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    .line 2064
    new-instance v3, Landroid/graphics/Rect;

    iget-object v9, p0, mFrame:Landroid/graphics/Rect;

    invoke-direct {v3, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2065
    .local v3, "frame":Landroid/graphics/Rect;
    const/4 v6, 0x0

    .line 2066
    .local v6, "optionScale":Z
    const/4 v5, 0x0

    .line 2067
    .local v5, "optionMinimized":Z
    const/4 v0, 0x0

    .line 2070
    .local v0, "applyResizableInset":Z
    invoke-virtual {p0}, getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    const/16 v10, 0x800

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    .line 2071
    invoke-virtual {p0}, getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    .line 2073
    if-eqz v6, :cond_45

    .line 2076
    iget v9, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, mHScale:F

    mul-float/2addr v10, v11

    iget v11, p0, mDssScale:F

    div-float/2addr v10, v11

    add-float/2addr v10, v12

    float-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v3, Landroid/graphics/Rect;->right:I

    .line 2077
    iget v9, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, mVScale:F

    mul-float/2addr v10, v11

    iget v11, p0, mDssScale:F

    div-float/2addr v10, v11

    add-float/2addr v10, v12

    float-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v3, Landroid/graphics/Rect;->bottom:I

    .line 2088
    :cond_45
    invoke-virtual {p0}, getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v9

    if-eqz v9, :cond_5c

    iget-object v9, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v9, v9, Lcom/android/server/wm/WindowManagerService;->mIsRecentsMultiWindowRunning:Z

    if-eqz v9, :cond_5c

    .line 2089
    invoke-virtual {p0}, getStackBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2092
    :cond_5c
    if-eqz v6, :cond_6e

    if-nez v5, :cond_6e

    .line 2093
    iget-object v9, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6e

    invoke-virtual {p0}, isFloating()Z

    move-result v9

    if-nez v9, :cond_6e

    .line 2094
    const/4 v0, 0x1

    .line 2101
    :cond_6e
    iget-object v9, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v10, 0x1000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_9b

    .line 2102
    iget v9, v3, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v10, p0, mHScale:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v3, Landroid/graphics/Rect;->left:I

    .line 2103
    iget v9, v3, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget v10, p0, mVScale:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v3, Landroid/graphics/Rect;->top:I

    .line 2104
    iget v9, v3, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget v10, p0, mHScale:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v3, Landroid/graphics/Rect;->right:I

    .line 2105
    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    iget v10, p0, mVScale:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v3, Landroid/graphics/Rect;->bottom:I

    .line 2109
    :cond_9b
    iget v9, p0, mTouchableInsets:I

    packed-switch v9, :pswitch_data_182

    .line 2114
    if-eqz v0, :cond_af

    .line 2115
    iget-object v9, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->getScaleWindowResizableSize()I

    move-result v7

    .line 2116
    .local v7, "resizableSize":I
    neg-int v9, v7

    neg-int v10, v7

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Rect;->inset(II)V

    .line 2120
    .end local v7    # "resizableSize":I
    :cond_af
    invoke-virtual {p1, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2221
    :cond_b2
    :goto_b2
    iget-object v9, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x62

    if-ne v9, v10, :cond_e3

    .line 2222
    if-eqz v6, :cond_e3

    if-nez v5, :cond_e3

    .line 2223
    iget-object v9, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->getScaleWindowResizableSize()I

    move-result v7

    .line 2224
    .restart local v7    # "resizableSize":I
    invoke-virtual {p1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2225
    .local v1, "bounds":Landroid/graphics/Rect;
    iget-object v9, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget v9, v9, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    packed-switch v9, :pswitch_data_18c

    .line 2233
    :pswitch_d1
    iget v9, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v7

    iput v9, v1, Landroid/graphics/Rect;->left:I

    .line 2234
    iget v9, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v7

    iput v9, v1, Landroid/graphics/Rect;->right:I

    .line 2235
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v7

    iput v9, v1, Landroid/graphics/Rect;->bottom:I

    .line 2238
    :goto_e0
    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2242
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "resizableSize":I
    :cond_e3
    return-void

    .line 2126
    :pswitch_e4
    new-instance v2, Landroid/graphics/Rect;

    iget-object v9, p0, mGivenContentInsets:Landroid/graphics/Rect;

    invoke-direct {v2, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2128
    .local v2, "contentInsets":Landroid/graphics/Rect;
    if-eqz v6, :cond_111

    .line 2129
    iget v9, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, mHScale:F

    mul-float/2addr v10, v11

    iget v11, p0, mDssScale:F

    div-float/2addr v10, v11

    add-float/2addr v10, v12

    float-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v2, Landroid/graphics/Rect;->right:I

    .line 2130
    iget v9, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, mVScale:F

    mul-float/2addr v10, v11

    iget v11, p0, mDssScale:F

    div-float/2addr v10, v11

    add-float/2addr v10, v12

    float-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    .line 2132
    :cond_111
    iget v9, p0, mDssScale:F

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->scale(F)V

    .line 2133
    invoke-static {p1, v3, v2}, applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_b2

    .line 2160
    .end local v2    # "contentInsets":Landroid/graphics/Rect;
    :pswitch_11a
    new-instance v8, Landroid/graphics/Rect;

    iget-object v9, p0, mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2162
    .local v8, "visibleInsets":Landroid/graphics/Rect;
    if-eqz v6, :cond_147

    .line 2163
    iget v9, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, mHScale:F

    mul-float/2addr v10, v11

    iget v11, p0, mDssScale:F

    div-float/2addr v10, v11

    add-float/2addr v10, v12

    float-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 2164
    iget v9, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, mVScale:F

    mul-float/2addr v10, v11

    iget v11, p0, mDssScale:F

    div-float/2addr v10, v11

    add-float/2addr v10, v12

    float-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 2166
    :cond_147
    iget v9, p0, mDssScale:F

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->scale(F)V

    .line 2167
    invoke-static {p1, v3, v8}, applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_b2

    .line 2190
    .end local v8    # "visibleInsets":Landroid/graphics/Rect;
    :pswitch_151
    iget-object v4, p0, mGivenTouchableRegion:Landroid/graphics/Region;

    .line 2191
    .local v4, "givenTouchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 2196
    if-eqz v6, :cond_160

    .line 2197
    iget v9, p0, mHScale:F

    iget v10, p0, mDssScale:F

    div-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/graphics/Region;->scale(F)V

    .line 2201
    :cond_160
    iget v9, p0, mDssScale:F

    invoke-virtual {p1, v9}, Landroid/graphics/Region;->scale(F)V

    .line 2213
    if-nez v5, :cond_b2

    .line 2214
    iget v9, v3, Landroid/graphics/Rect;->left:I

    iget v10, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Region;->translate(II)V

    goto/16 :goto_b2

    .line 2228
    .end local v4    # "givenTouchableRegion":Landroid/graphics/Region;
    .restart local v1    # "bounds":Landroid/graphics/Rect;
    .restart local v7    # "resizableSize":I
    :pswitch_170
    iget v9, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v7

    iput v9, v1, Landroid/graphics/Rect;->top:I

    .line 2229
    iget v9, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v7

    iput v9, v1, Landroid/graphics/Rect;->right:I

    .line 2230
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v7

    iput v9, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e0

    .line 2109
    nop

    :pswitch_data_182
    .packed-switch 0x1
        :pswitch_e4
        :pswitch_11a
        :pswitch_151
    .end packed-switch

    .line 2225
    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_170
        :pswitch_d1
        :pswitch_170
    .end packed-switch
.end method

.method public getVisibleFrameLw()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 1168
    iget-object v0, p0, mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 3060
    const/4 v0, 0x0

    .line 3062
    .local v0, "spec":Landroid/view/MagnificationSpec;
    iget-object v2, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mEasyOneHandScaleSpec:Landroid/view/MagnificationSpec;

    .line 3065
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v2

    invoke-virtual {p0}, getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/VirtualScreenManagerService;->isVirtualScreen(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 3066
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 3070
    :cond_1b
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v2

    if-nez v2, :cond_36

    .line 3071
    iget-object v2, p0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_37

    .line 3072
    iget-object v2, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v3, p0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v2

    if-nez v2, :cond_37

    move-object v0, v1

    .line 3081
    .end local v0    # "spec":Landroid/view/MagnificationSpec;
    :cond_36
    :goto_36
    return-object v0

    .line 3076
    .restart local v0    # "spec":Landroid/view/MagnificationSpec;
    :cond_37
    iget-object v2, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v3, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v2

    if-nez v2, :cond_36

    move-object v0, v1

    .line 3077
    goto :goto_36
.end method

.method getWindowList()Lcom/android/server/wm/WindowList;
    .registers 3

    .prologue
    .line 2245
    invoke-virtual {p0}, getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2246
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v1

    goto :goto_7
.end method

.method public hasAppShownWindows()Z
    .registers 2

    .prologue
    .line 1356
    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_12

    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-nez v0, :cond_10

    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hasChild()Z
    .registers 2

    .prologue
    .line 2828
    iget-object v0, p0, mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDrawnLw()Z
    .registers 3

    .prologue
    .line 1811
    iget-object v0, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method hasMoved()Z
    .registers 3

    .prologue
    .line 1652
    iget-boolean v0, p0, mHasSurface:Z

    if-eqz v0, :cond_40

    iget-boolean v0, p0, mContentChanged:Z

    if-eqz v0, :cond_40

    iget-boolean v0, p0, mExiting:Z

    if-nez v0, :cond_40

    iget-object v0, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v0, :cond_40

    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->okToDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_32

    iget-object v0, p0, mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_40

    :cond_32
    iget-object v0, p0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3e

    iget-object v0, p0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, hasMoved()Z

    move-result v0

    if-nez v0, :cond_40

    :cond_3e
    const/4 v0, 0x1

    :goto_3f
    return v0

    :cond_40
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method public hasSubWindow()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 3128
    :try_start_2
    iget-object v1, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_1f

    iget-object v1, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v1, :cond_1f

    .line 3129
    iget-object v1, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    iget-object v1, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v3, :cond_20

    iget-object v1, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v1, v3, :cond_20

    .line 3140
    :cond_1f
    :goto_1f
    return v0

    .line 3134
    :cond_20
    iget-object v1, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v1}, Landroid/view/IApplicationToken;->hasSubWindow()Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_27} :catch_29

    move-result v0

    goto :goto_1f

    .line 3137
    :catch_29
    move-exception v1

    goto :goto_1f
.end method

.method public hideLw(Z)Z
    .registers 3
    .param p1, "doAnimation"    # Z

    .prologue
    .line 1883
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, hideLw(ZZ)Z

    move-result v0

    return v0
.end method

.method hideLw(ZZ)Z
    .registers 4
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z

    .prologue
    .line 1888
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, hideLw(ZZZ)Z

    move-result v0

    return v0
.end method

.method public hideLw(ZZZ)Z
    .registers 12
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z
    .param p3, "withSubWindow"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1894
    if-eqz p1, :cond_11

    .line 1895
    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->okToDisplay(I)Z

    move-result v5

    if-nez v5, :cond_11

    .line 1896
    const/4 p1, 0x0

    .line 1899
    :cond_11
    if-eqz p1, :cond_18

    iget-boolean v0, p0, mPolicyVisibilityAfterAnim:Z

    .line 1901
    .local v0, "current":Z
    :goto_15
    if-nez v0, :cond_1b

    .line 1939
    :goto_17
    return v3

    .line 1899
    .end local v0    # "current":Z
    :cond_18
    iget-boolean v0, p0, mPolicyVisibility:Z

    goto :goto_15

    .line 1907
    .restart local v0    # "current":Z
    :cond_1b
    if-eqz p3, :cond_33

    .line 1908
    iget-object v5, p0, mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1909
    .local v2, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, v3, v3, v3}, hideLw(ZZZ)Z

    goto :goto_23

    .line 1914
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    :cond_33
    if-eqz p1, :cond_42

    .line 1915
    iget-object v5, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v3}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1916
    iget-object v5, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v5, :cond_42

    .line 1917
    const/4 p1, 0x0

    .line 1920
    :cond_42
    if-eqz p1, :cond_4f

    .line 1921
    iput-boolean v3, p0, mPolicyVisibilityAfterAnim:Z

    .line 1936
    :cond_46
    :goto_46
    if-eqz p2, :cond_4d

    .line 1937
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_4d
    move v3, v4

    .line 1939
    goto :goto_17

    .line 1923
    :cond_4f
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v5, :cond_6b

    const-string v5, "WindowState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Policy visibility false: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    :cond_6b
    iput-boolean v3, p0, mPolicyVisibilityAfterAnim:Z

    .line 1925
    iput-boolean v3, p0, mPolicyVisibility:Z

    .line 1929
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 1930
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v3, p0, :cond_46

    .line 1931
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v3, :cond_85

    const-string v3, "WindowState"

    const-string v5, "WindowState.hideLw: setting mFocusMayChange true"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_85
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v4, v3, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto :goto_46
.end method

.method public isAlive()Z
    .registers 2

    .prologue
    .line 1988
    iget-object v0, p0, mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public isAnimatingLw()Z
    .registers 2

    .prologue
    .line 1584
    iget-object v0, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_12

    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_14

    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isArrangedUpperSideInputMethod()Z
    .registers 3

    .prologue
    .line 2792
    invoke-virtual {p0}, getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 2793
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_b

    .line 2794
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isArrangedUpperSideInputMethod()Z

    move-result v1

    .line 2797
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isAttachedTo(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 2878
    iget-object v0, p0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isAttachedWindowFocused()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2833
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_10

    .line 2834
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-ne v1, p0, :cond_10

    const/4 v0, 0x1

    .line 2836
    :cond_10
    return v0
.end method

.method isClosing()Z
    .registers 3

    .prologue
    .line 1997
    iget-boolean v0, p0, mExiting:Z

    if-nez v0, :cond_10

    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v1, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method isConfigChanged()Z
    .registers 6

    .prologue
    .line 1669
    invoke-virtual {p0}, getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 1670
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_39

    iget-object v4, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_39

    iget-object v1, v3, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 1689
    .local v1, "overrideConfig":Landroid/content/res/Configuration;
    :goto_c
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v4, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 1690
    .local v2, "serviceConfig":Landroid/content/res/Configuration;
    iget-object v4, p0, mConfiguration:Landroid/content/res/Configuration;

    if-eq v4, v2, :cond_1c

    iget-object v4, p0, mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-nez v4, :cond_28

    :cond_1c
    iget-object v4, p0, mOverrideConfig:Landroid/content/res/Configuration;

    if-eq v4, v1, :cond_3c

    iget-object v4, p0, mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v4

    if-nez v4, :cond_3c

    :cond_28
    const/4 v0, 0x1

    .line 1694
    .local v0, "configChanged":Z
    :goto_29
    iget-object v4, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_38

    .line 1696
    iget-boolean v4, p0, mConfigHasChanged:Z

    or-int/2addr v4, v0

    iput-boolean v4, p0, mConfigHasChanged:Z

    .line 1697
    iget-boolean v0, p0, mConfigHasChanged:Z

    .line 1700
    :cond_38
    return v0

    .line 1670
    .end local v0    # "configChanged":Z
    .end local v1    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v2    # "serviceConfig":Landroid/content/res/Configuration;
    :cond_39
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    goto :goto_c

    .line 1690
    .restart local v1    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local v2    # "serviceConfig":Landroid/content/res/Configuration;
    :cond_3c
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public isCustomStartingAnimationLw()Z
    .registers 6

    .prologue
    .line 3174
    iget-object v3, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_26

    .line 3175
    iget-object v3, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 3176
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_26

    .line 3177
    iget-object v3, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3178
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ec

    if-ne v3, v4, :cond_23

    .line 3179
    const/4 v3, 0x1

    .line 3183
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :goto_22
    return v3

    .line 3176
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 3183
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_26
    const/4 v3, 0x0

    goto :goto_22
.end method

.method public isDefaultDisplay()Z
    .registers 3

    .prologue
    .line 2007
    invoke-virtual {p0}, getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2008
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_8

    .line 2010
    const/4 v1, 0x0

    .line 2012
    :goto_7
    return v1

    :cond_8
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    goto :goto_7
.end method

.method public isDimming()Z
    .registers 3

    .prologue
    .line 2017
    invoke-virtual {p0}, getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 2018
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_8

    .line 2019
    const/4 v1, 0x0

    .line 2021
    :goto_7
    return v1

    :cond_8
    iget-object v1, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->isDimming(Lcom/android/server/wm/WindowStateAnimator;)Z

    move-result v1

    goto :goto_7
.end method

.method public isDisplayedLw()Z
    .registers 3

    .prologue
    .line 1571
    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1572
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p0}, isDrawnLw()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-boolean v1, p0, mPolicyVisibility:Z

    if-eqz v1, :cond_26

    iget-boolean v1, p0, mAttachedHidden:Z

    if-nez v1, :cond_16

    if-eqz v0, :cond_24

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_24

    :cond_16
    iget-object v1, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v1, :cond_24

    if-eqz v0, :cond_26

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_26

    :cond_24
    const/4 v1, 0x1

    :goto_25
    return v1

    :cond_26
    const/4 v1, 0x0

    goto :goto_25
.end method

.method public isDrawFinishedLw()Z
    .registers 3

    .prologue
    .line 1619
    iget-boolean v0, p0, mHasSurface:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, mDestroying:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public isDrawnLw()Z
    .registers 3

    .prologue
    .line 1631
    iget-boolean v0, p0, mHasSurface:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, mDestroying:Z

    if-nez v0, :cond_18

    iget-object v0, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    iget-object v0, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public isExiting()Z
    .registers 2

    .prologue
    .line 2002
    iget-boolean v0, p0, mExiting:Z

    return v0
.end method

.method public isFixedBounds()Z
    .registers 2

    .prologue
    .line 2770
    invoke-virtual {p0}, getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isFloating()Z
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 2780
    iget-object v0, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_1b

    iget-object v0, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_1b

    iget-object v0, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_1b

    .line 2784
    const/4 v0, 0x0

    .line 2786
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method public isFocused()Z
    .registers 3

    .prologue
    .line 2453
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2454
    :try_start_5
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v0, p0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 2455
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw v0
.end method

.method isFullscreen(II)Z
    .registers 6
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I

    .prologue
    const/4 v0, 0x0

    .line 1660
    iget-object v1, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    .line 1664
    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gtz v1, :cond_a

    iget-object v1, p0, mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gtz v1, :cond_a

    iget-object v1, p0, mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v1, p1, :cond_a

    iget-object v1, p0, mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v1, p2, :cond_a

    const/4 v0, 0x1

    goto :goto_a
.end method

.method public isGoneForLayoutLw()Z
    .registers 4

    .prologue
    .line 1590
    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1591
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget v1, p0, mViewVisibility:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_30

    iget-boolean v1, p0, mRelayoutCalled:Z

    if-eqz v1, :cond_30

    if-nez v0, :cond_14

    iget-object v1, p0, mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v1, :cond_30

    :cond_14
    if-eqz v0, :cond_1e

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_30

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v1, :cond_30

    :cond_1e
    iget-boolean v1, p0, mAttachedHidden:Z

    if-nez v1, :cond_30

    iget-boolean v1, p0, mExiting:Z

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, isAnimatingLw()Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_2c
    iget-boolean v1, p0, mDestroying:Z

    if-eqz v1, :cond_32

    :cond_30
    const/4 v1, 0x1

    :goto_31
    return v1

    :cond_32
    const/4 v1, 0x0

    goto :goto_31
.end method

.method isGoneForMWLayoutLw()Z
    .registers 4

    .prologue
    .line 1603
    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1604
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget v1, p0, mViewVisibility:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_26

    iget-boolean v1, p0, mRelayoutCalled:Z

    if-eqz v1, :cond_26

    if-nez v0, :cond_14

    iget-object v1, p0, mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v1, :cond_26

    :cond_14
    if-eqz v0, :cond_1a

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_26

    :cond_1a
    iget-boolean v1, p0, mAttachedHidden:Z

    if-nez v1, :cond_26

    iget-boolean v1, p0, mExiting:Z

    if-nez v1, :cond_26

    iget-boolean v1, p0, mDestroying:Z

    if-eqz v1, :cond_28

    :cond_26
    const/4 v1, 0x1

    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method isHiddenFromUserLocked()Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2030
    move-object v2, p0

    .line 2031
    .local v2, "win":Lcom/android/server/wm/WindowState;
    :goto_3
    iget-object v5, v2, mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_a

    .line 2032
    iget-object v2, v2, mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_3

    .line 2034
    :cond_a
    iget-object v5, v2, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d0

    if-ge v5, v6, :cond_45

    iget-object v5, v2, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_45

    iget-object v5, v2, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowToken;->showForAllUsers:Z

    if-eqz v5, :cond_45

    .line 2038
    invoke-virtual {v2}, getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2039
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_23

    .line 2051
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_22
    :goto_22
    return v3

    .line 2042
    .restart local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_23
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 2043
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v5, v2, mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gtz v5, :cond_45

    iget-object v5, v2, mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gtz v5, :cond_45

    iget-object v5, v2, mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/view/DisplayInfo;->appWidth:I

    if-lt v5, v6, :cond_45

    iget-object v5, v2, mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/view/DisplayInfo;->appHeight:I

    if-lt v5, v6, :cond_45

    move v3, v4

    .line 2047
    goto :goto_22

    .line 2051
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_45
    iget-boolean v5, v2, mShowToOwnerOnly:Z

    if-eqz v5, :cond_57

    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v2, mOwnerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v5

    if-eqz v5, :cond_22

    :cond_57
    move v3, v4

    goto :goto_22
.end method

.method public isHomeType()Z
    .registers 3

    .prologue
    .line 3207
    :try_start_0
    iget-object v0, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1b

    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_1b

    .line 3209
    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v0}, Landroid/view/IApplicationToken;->isHomeWindow()Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_1a

    move-result v0

    .line 3213
    :goto_19
    return v0

    .line 3211
    :catch_1a
    move-exception v0

    .line 3213
    :cond_1b
    const/4 v0, 0x0

    goto :goto_19
.end method

.method isIdentityMatrix(FFFF)Z
    .registers 11
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .prologue
    const v5, 0x3f800054    # 1.00001f

    const v4, 0x3f7fff58    # 0.99999f

    const v3, 0x358637bd    # 1.0E-6f

    const v2, -0x4a79c843    # -1.0E-6f

    const/4 v0, 0x0

    .line 1360
    cmpg-float v1, p1, v4

    if-ltz v1, :cond_15

    cmpl-float v1, p1, v5

    if-lez v1, :cond_16

    .line 1364
    :cond_15
    :goto_15
    return v0

    .line 1361
    :cond_16
    cmpg-float v1, p4, v4

    if-ltz v1, :cond_15

    cmpl-float v1, p4, v5

    if-gtz v1, :cond_15

    .line 1362
    cmpg-float v1, p2, v2

    if-ltz v1, :cond_15

    cmpl-float v1, p2, v3

    if-gtz v1, :cond_15

    .line 1363
    cmpg-float v1, p3, v2

    if-ltz v1, :cond_15

    cmpl-float v1, p3, v3

    if-gtz v1, :cond_15

    .line 1364
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public isInputMethodTargetLw()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 3191
    iget-object v2, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_24

    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v2, v1, :cond_24

    .line 3192
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 3193
    .local v0, "inputMethodTarget":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_24

    iget-object v2, v0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_24

    if-eq v0, p0, :cond_24

    .line 3194
    iget-object v2, v0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-eqz v2, :cond_24

    iget-boolean v2, v0, mHasSurface:Z

    if-eqz v2, :cond_24

    .line 3195
    const/4 v1, 0x0

    .line 3200
    .end local v0    # "inputMethodTarget":Lcom/android/server/wm/WindowState;
    :cond_24
    return v1
.end method

.method public isOnScreen()Z
    .registers 2

    .prologue
    .line 1481
    iget-boolean v0, p0, mPolicyVisibility:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, isOnScreenIgnoringKeyguard()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isOnScreenIgnoringKeyguard()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1489
    iget-boolean v3, p0, mHasSurface:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, mDestroying:Z

    if-eqz v3, :cond_b

    .line 1497
    :cond_a
    :goto_a
    return v1

    .line 1492
    :cond_b
    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1493
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_25

    .line 1494
    iget-boolean v3, p0, mAttachedHidden:Z

    if-nez v3, :cond_17

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_23

    :cond_17
    iget-object v3, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_23

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_a

    :cond_23
    move v1, v2

    goto :goto_a

    .line 1497
    :cond_25
    iget-boolean v3, p0, mAttachedHidden:Z

    if-eqz v3, :cond_2f

    iget-object v3, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_a

    :cond_2f
    move v1, v2

    goto :goto_a
.end method

.method isOpaqueDrawn()Z
    .registers 3

    .prologue
    .line 1641
    iget-object v0, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget-object v0, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-ne v0, v1, :cond_29

    :cond_f
    invoke-virtual {p0}, isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_29

    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_27

    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_29

    :cond_27
    const/4 v0, 0x1

    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method isOverrideConfigChanged()Z
    .registers 4

    .prologue
    .line 1705
    const/4 v1, 0x0

    .line 1706
    .local v1, "overrideConfigChanged":Z
    iget-object v2, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_1e

    invoke-virtual {p0}, getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 1707
    invoke-virtual {p0}, getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    iget-object v0, v2, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 1708
    .local v0, "overrideConfig":Landroid/content/res/Configuration;
    iget-object v2, p0, mOverrideConfig:Landroid/content/res/Configuration;

    if-eq v2, v0, :cond_1f

    iget-object v2, p0, mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1f

    const/4 v1, 0x1

    .line 1710
    .end local v0    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_1e
    :goto_1e
    return v1

    .line 1708
    .restart local v0    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method isPotentialDragTarget()Z
    .registers 2

    .prologue
    .line 1452
    invoke-virtual {p0}, isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, mRemoved:Z

    if-nez v0, :cond_14

    iget-object v0, p0, mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_14

    iget-object v0, p0, mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method isReadyForDisplay()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1513
    iget-object v1, p0, mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1520
    :cond_11
    :goto_11
    return v0

    :cond_12
    iget-boolean v1, p0, mHasSurface:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, mPolicyVisibility:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, mDestroying:Z

    if-nez v1, :cond_11

    iget-boolean v1, p0, mAttachedHidden:Z

    if-nez v1, :cond_2c

    iget v1, p0, mViewVisibility:I

    if-nez v1, :cond_2c

    iget-object v1, p0, mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v1, :cond_3e

    :cond_2c
    iget-object v1, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_3e

    iget-object v1, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_11

    iget-object v1, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_11

    :cond_3e
    const/4 v0, 0x1

    goto :goto_11
.end method

.method isReadyForDisplayIgnoringKeyguard()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1533
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->shouldHideWhileStartingWindowIsShown(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1557
    :cond_b
    :goto_b
    return v1

    .line 1545
    :cond_c
    iget-object v2, p0, mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v2, :cond_1c

    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1551
    :cond_1c
    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1552
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_24

    iget-boolean v2, p0, mPolicyVisibility:Z

    if-eqz v2, :cond_b

    .line 1557
    :cond_24
    iget-boolean v2, p0, mHasSurface:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, mDestroying:Z

    if-nez v2, :cond_b

    iget-boolean v2, p0, mAttachedHidden:Z

    if-nez v2, :cond_3a

    iget v2, p0, mViewVisibility:I

    if-nez v2, :cond_3a

    iget-object v2, p0, mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v2, :cond_50

    :cond_3a
    iget-object v2, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_50

    if-eqz v0, :cond_b

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_b

    iget-object v2, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v2

    if-nez v2, :cond_b

    :cond_50
    const/4 v1, 0x1

    goto :goto_b
.end method

.method public isTopPenWindowControllerVisibleInStack()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2869
    invoke-virtual {p0}, getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 2870
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_1e

    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mTopPenWindowControllerToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_1e

    .line 2871
    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mTopPenWindowControllerToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v2, :cond_1e

    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mTopPenWindowControllerToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v2, :cond_1e

    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mTopPenWindowControllerToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    .line 2873
    :cond_1e
    return v1
.end method

.method public isTransluent()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2802
    iget-object v1, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_c

    iget-object v1, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-nez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public isUnderFullDim()Z
    .registers 4

    .prologue
    .line 3260
    iget-object v1, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 3261
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getFullDimLayer()I

    move-result v1

    iget v2, p0, mLayer:I

    if-le v1, v2, :cond_12

    .line 3262
    const/4 v1, 0x1

    .line 3264
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public isVisibleLw()Z
    .registers 3

    .prologue
    .line 1383
    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1384
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, mHasSurface:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, mPolicyVisibility:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, mAttachedHidden:Z

    if-nez v1, :cond_1e

    if-eqz v0, :cond_14

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_1e

    :cond_14
    iget-boolean v1, p0, mExiting:Z

    if-nez v1, :cond_1e

    iget-boolean v1, p0, mDestroying:Z

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method isVisibleNow()Z
    .registers 3

    .prologue
    .line 1441
    iget-boolean v0, p0, mHasSurface:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, mPolicyVisibility:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, mAttachedHidden:Z

    if-nez v0, :cond_23

    iget-object v0, p0, mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    :cond_19
    iget-boolean v0, p0, mExiting:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, mDestroying:Z

    if-nez v0, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method isVisibleOrAdding()Z
    .registers 3

    .prologue
    .line 1461
    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1462
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, mHasSurface:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, mRelayoutCalled:Z

    if-nez v1, :cond_e

    iget v1, p0, mViewVisibility:I

    if-eqz v1, :cond_16

    :cond_e
    if-eqz v0, :cond_32

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v1, :cond_32

    :cond_16
    iget-boolean v1, p0, mPolicyVisibility:Z

    if-eqz v1, :cond_32

    iget-boolean v1, p0, mAttachedHidden:Z

    if-nez v1, :cond_32

    if-eqz v0, :cond_24

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_32

    :cond_24
    iget-boolean v1, p0, mExiting:Z

    if-nez v1, :cond_32

    iget-boolean v1, p0, mDestroying:Z

    if-nez v1, :cond_32

    iget-boolean v1, p0, mRemoved:Z

    if-nez v1, :cond_32

    const/4 v1, 0x1

    :goto_31
    return v1

    :cond_32
    const/4 v1, 0x0

    goto :goto_31
.end method

.method public isVisibleOrBehindKeyguardLw()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1407
    iget-object v4, p0, mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v4, :cond_13

    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1417
    :goto_12
    return v3

    .line 1414
    :cond_13
    iget-object v1, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1415
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_4a

    iget-object v4, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_48

    move v0, v2

    .line 1417
    .local v0, "animating":Z
    :goto_1e
    iget-boolean v4, p0, mHasSurface:Z

    if-eqz v4, :cond_50

    iget-boolean v4, p0, mDestroying:Z

    if-nez v4, :cond_50

    iget-boolean v4, p0, mExiting:Z

    if-nez v4, :cond_50

    if-nez v1, :cond_4c

    iget-boolean v4, p0, mPolicyVisibility:Z

    if-eqz v4, :cond_50

    :cond_30
    iget-boolean v4, p0, mAttachedHidden:Z

    if-nez v4, :cond_3e

    iget v4, p0, mViewVisibility:I

    if-nez v4, :cond_3e

    iget-object v4, p0, mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v4, :cond_46

    :cond_3e
    iget-object v4, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_46

    if-eqz v0, :cond_50

    :cond_46
    :goto_46
    move v3, v2

    goto :goto_12

    .end local v0    # "animating":Z
    :cond_48
    move v0, v3

    .line 1415
    goto :goto_1e

    :cond_4a
    move v0, v3

    goto :goto_1e

    .line 1417
    .restart local v0    # "animating":Z
    :cond_4c
    iget-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v4, :cond_30

    :cond_50
    move v2, v3

    goto :goto_46
.end method

.method public isVoiceInteraction()Z
    .registers 2

    .prologue
    .line 1245
    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_9

    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->voiceInteraction:Z

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isWinVisibleLw()Z
    .registers 3

    .prologue
    .line 1430
    iget-object v0, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1431
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, mHasSurface:Z

    if-eqz v1, :cond_24

    iget-boolean v1, p0, mPolicyVisibility:Z

    if-eqz v1, :cond_24

    iget-boolean v1, p0, mAttachedHidden:Z

    if-nez v1, :cond_24

    if-eqz v0, :cond_1a

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v1, :cond_24

    :cond_1a
    iget-boolean v1, p0, mExiting:Z

    if-nez v1, :cond_24

    iget-boolean v1, p0, mDestroying:Z

    if-nez v1, :cond_24

    const/4 v1, 0x1

    :goto_23
    return v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method

.method makeInputChannelName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public moveToDisplayLocked(Lcom/android/server/wm/DisplayContent;)Z
    .registers 9
    .param p1, "target"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v5, 0x1

    .line 3218
    if-eqz p1, :cond_cc

    iget-object v4, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eq p1, v4, :cond_cc

    .line 3219
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 3220
    .local v1, "displayId":I
    iget-object v3, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3221
    .local v3, "tempDisplayContent":Lcom/android/server/wm/DisplayContent;
    iput-boolean v5, p1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 3222
    iget v4, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 3223
    iget-object v4, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v5, v4, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 3224
    iget-object v4, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 3235
    iput-object p1, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3236
    iget-object v4, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getLayerStack()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowStateAnimator;->setLayerStack(I)V

    .line 3237
    iget-object v4, p0, mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {v4, v1}, Lcom/android/server/input/InputWindowHandle;->setDisplayId(I)V

    .line 3238
    iget-object v4, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, mLastTitle:Ljava/lang/CharSequence;

    .line 3239
    iget-object v4, p0, mLastTitle:Ljava/lang/CharSequence;

    if-eqz v4, :cond_49

    iget-object v4, p0, mLastTitle:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gtz v4, :cond_4f

    .line 3240
    :cond_49
    iget-object v4, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v4, p0, mLastTitle:Ljava/lang/CharSequence;

    .line 3242
    :cond_4f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Window{"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " u"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mSession:Lcom/android/server/wm/Session;

    iget v6, v6, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " d"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mLastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v4, p0, mExiting:Z

    if-eqz v4, :cond_c6

    const-string v4, " EXITING}"

    :goto_9a
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, mStringNameCache:Ljava/lang/String;

    .line 3247
    :try_start_a4
    iget-object v4, p0, mClient:Landroid/view/IWindow;

    invoke-interface {v4, v1}, Landroid/view/IWindow;->dispatchAttachedDisplayChanged(I)V
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_a9} :catch_ce

    .line 3250
    :goto_a9
    iget-object v4, p0, mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_af
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ca

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 3251
    .local v0, "child":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 3252
    invoke-virtual {v0, p1}, moveToDisplayLocked(Lcom/android/server/wm/DisplayContent;)Z

    goto :goto_af

    .line 3242
    .end local v0    # "child":Lcom/android/server/wm/WindowState;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_c6
    const-string/jumbo v4, "}"

    goto :goto_9a

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_ca
    move v4, v5

    .line 3256
    .end local v1    # "displayId":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "tempDisplayContent":Lcom/android/server/wm/DisplayContent;
    :goto_cb
    return v4

    :cond_cc
    const/4 v4, 0x0

    goto :goto_cb

    .line 3248
    .restart local v1    # "displayId":I
    .restart local v3    # "tempDisplayContent":Lcom/android/server/wm/DisplayContent;
    :catch_ce
    move-exception v4

    goto :goto_a9
.end method

.method public pokeDrawLockLw(J)V
    .registers 8
    .param p1, "timeout"    # J

    .prologue
    .line 1960
    invoke-virtual {p0}, isVisibleOrAdding()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 1961
    iget-object v1, p0, mDrawLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_4b

    .line 1965
    iget-object v1, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1966
    .local v0, "tag":Ljava/lang/CharSequence;
    if-nez v0, :cond_16

    .line 1967
    iget-object v1, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1969
    :cond_16
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/16 v2, 0x80

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Window:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, mDrawLock:Landroid/os/PowerManager$WakeLock;

    .line 1971
    iget-object v1, p0, mDrawLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1972
    iget-object v1, p0, mDrawLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    iget v3, p0, mOwnerUid:I

    iget-object v4, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1975
    .end local v0    # "tag":Ljava/lang/CharSequence;
    :cond_4b
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_POWER:Z

    if-eqz v1, :cond_6c

    .line 1976
    const-string v1, "WindowState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pokeDrawLock: poking draw lock on behalf of visible window owned by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    :cond_6c
    iget-object v1, p0, mDrawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1984
    :cond_71
    :goto_71
    return-void

    .line 1980
    :cond_72
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_POWER:Z

    if-eqz v1, :cond_71

    .line 1981
    const-string v1, "WindowState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pokeDrawLock: suppressed draw lock request for invisible window owned by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71
.end method

.method prelayout()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1368
    iget-boolean v0, p0, mEnforceSizeCompat:Z

    if-eqz v0, :cond_13

    .line 1369
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    iput v0, p0, mGlobalScale:F

    .line 1370
    iget v0, p0, mGlobalScale:F

    div-float v0, v1, v0

    iput v0, p0, mInvGlobalScale:F

    .line 1374
    :goto_12
    return-void

    .line 1372
    :cond_13
    iput v1, p0, mInvGlobalScale:F

    iput v1, p0, mGlobalScale:F

    goto :goto_12
.end method

.method public registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;

    .prologue
    .line 2436
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2437
    :try_start_5
    iget-object v0, p0, mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_10

    .line 2438
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, mFocusCallbacks:Landroid/os/RemoteCallbackList;

    .line 2440
    :cond_10
    iget-object v0, p0, mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2441
    monitor-exit v1

    .line 2442
    return-void

    .line 2441
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v0
.end method

.method removeLocked()V
    .registers 4

    .prologue
    .line 1715
    invoke-virtual {p0}, disposeInputChannel()V

    .line 1717
    iget-object v0, p0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_36

    .line 1718
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_2f

    const-string v0, "WindowState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_2f
    iget-object v0, p0, mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 1721
    :cond_36
    iget-object v0, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    .line 1722
    iget-object v0, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 1723
    iget-object v0, p0, mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowRemovedLocked()V

    .line 1725
    :try_start_45
    iget-object v0, p0, mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_51} :catch_52

    .line 1730
    :goto_51
    return-void

    .line 1726
    :catch_52
    move-exception v0

    goto :goto_51
.end method

.method public reportFocusChangedSerialized(ZZ)V
    .registers 4
    .param p1, "focused"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    .line 2255
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, reportFocusChangedSerialized(ZZZ)V

    .line 2256
    return-void
.end method

.method public reportFocusChangedSerialized(ZZZ)V
    .registers 8
    .param p1, "focused"    # Z
    .param p2, "inTouchMode"    # Z
    .param p3, "focusedAppChanged"    # Z

    .prologue
    .line 2260
    :try_start_0
    iget-object v3, p0, mClient:Landroid/view/IWindow;

    invoke-interface {v3, p1, p2, p3}, Landroid/view/IWindow;->windowFocusChanged(ZZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_3a

    .line 2264
    :goto_5
    iget-object v3, p0, mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_39

    .line 2265
    iget-object v3, p0, mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2266
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_34

    .line 2267
    iget-object v3, p0, mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowFocusObserver;

    .line 2269
    .local v2, "obs":Landroid/view/IWindowFocusObserver;
    if-eqz p1, :cond_28

    .line 2270
    :try_start_1c
    iget-object v3, p0, mWindowId:Landroid/view/IWindowId;

    invoke-interface {v3}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/IWindowFocusObserver;->focusGained(Landroid/os/IBinder;)V

    .line 2266
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2272
    :cond_28
    iget-object v3, p0, mWindowId:Landroid/view/IWindowId;

    invoke-interface {v3}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/IWindowFocusObserver;->focusLost(Landroid/os/IBinder;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_31} :catch_32

    goto :goto_25

    .line 2274
    :catch_32
    move-exception v3

    goto :goto_25

    .line 2277
    .end local v2    # "obs":Landroid/view/IWindowFocusObserver;
    :cond_34
    iget-object v3, p0, mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2279
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_39
    return-void

    .line 2261
    :catch_3a
    move-exception v3

    goto :goto_5
.end method

.method reportResized()V
    .registers 23

    .prologue
    .line 2283
    :try_start_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_RESIZE:Z

    if-nez v2, :cond_8

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_38

    :cond_8
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Reporting new frame to "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ": "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    :cond_38
    invoke-virtual/range {p0 .. p0}, isConfigChanged()Z

    move-result v13

    .line 2286
    .local v13, "configChanged":Z
    invoke-virtual/range {p0 .. p0}, getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v18

    .line 2287
    .local v18, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v18, :cond_27f

    move-object/from16 v0, p0

    iget-object v2, v0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_27f

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    .line 2292
    .local v17, "overrideConfig":Landroid/content/res/Configuration;
    :goto_4e
    const/16 v16, 0x0

    .line 2293
    .local v16, "lastRelayoutConfigChanged":Z
    if-nez v13, :cond_c3

    move-object/from16 v0, p0

    iget-object v2, v0, mLastRelayoutConfiguration:Landroid/content/res/Configuration;

    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    if-eq v2, v3, :cond_c3

    move-object/from16 v0, p0

    iget-object v2, v0, mLastRelayoutConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_c3

    .line 2296
    const/16 v16, 0x1

    .line 2297
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_RESIZE:Z

    if-nez v2, :cond_78

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-nez v2, :cond_78

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_CONFIGURATION:Z

    if-eqz v2, :cond_c3

    .line 2298
    :cond_78
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "win="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", lastRelayoutConfig="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, mLastRelayoutConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", CurConfig="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    :cond_c3
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iput-object v2, v0, mLastRelayoutConfiguration:Landroid/content/res/Configuration;

    .line 2318
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_RESIZE:Z

    if-nez v2, :cond_d5

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-nez v2, :cond_d5

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_CONFIGURATION:Z

    if-eqz v2, :cond_150

    :cond_d5
    if-eqz v13, :cond_150

    .line 2319
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Sending new config to window "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ": "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v20, "x"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, " / config="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, " overrideConfig="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    :cond_150
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2326
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_18e

    move-object/from16 v0, p0

    iget-object v2, v0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18e

    .line 2327
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Resizing "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, " WITH DRAW PENDING"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    :cond_18e
    new-instance v14, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v2, v0, mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v14, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2331
    .local v14, "dupConfig":Landroid/content/res/Configuration;
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v2, :cond_1c3

    .line 2332
    invoke-virtual/range {p0 .. p0}, getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-eqz v2, :cond_1c3

    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    move-object/from16 v0, v17

    if-eq v0, v2, :cond_1c3

    .line 2333
    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, v14, Landroid/content/res/Configuration;->orientation:I

    .line 2334
    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v2, v14, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2335
    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v2, v14, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2336
    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v2, v14, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2341
    :cond_1c3
    move-object/from16 v0, p0

    iget-object v4, v0, mFrame:Landroid/graphics/Rect;

    .line 2342
    .local v4, "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, mLastOverscanInsets:Landroid/graphics/Rect;

    .line 2343
    .local v5, "overscanInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v6, v0, mLastContentInsets:Landroid/graphics/Rect;

    .line 2344
    .local v6, "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, mLastVisibleInsets:Landroid/graphics/Rect;

    .line 2345
    .local v7, "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v8, v0, mLastStableInsets:Landroid/graphics/Rect;

    .line 2346
    .local v8, "stableInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v9, v0, mLastOutsets:Landroid/graphics/Rect;

    .line 2347
    .local v9, "outsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_283

    const/4 v10, 0x1

    .line 2352
    .local v10, "reportDraw":Z
    :goto_1e5
    const/16 v19, 0x0

    .line 2353
    .local v19, "tmpConfig":Landroid/content/res/Configuration;
    if-nez v13, :cond_1eb

    if-eqz v16, :cond_211

    .line 2354
    :cond_1eb
    move-object/from16 v0, p0

    iget v2, v0, mDssScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_286

    .line 2355
    new-instance v19, Landroid/content/res/Configuration;

    .end local v19    # "tmpConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2356
    .restart local v19    # "tmpConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, v19

    iget v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, mDssScale:F

    move/from16 v20, v0

    div-float v3, v3, v20

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, v19

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2361
    :cond_211
    :goto_211
    if-nez v13, :cond_215

    if-eqz v16, :cond_289

    :cond_215
    move-object/from16 v11, v19

    .line 2363
    .local v11, "newConfig":Landroid/content/res/Configuration;
    :goto_217
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/WindowManagerService;->getCocktailBarFrame(Lcom/android/server/wm/WindowState;Z)Landroid/graphics/Rect;

    move-result-object v12

    .line 2364
    .local v12, "cocktailBarFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_28b

    move-object/from16 v0, p0

    iget-object v2, v0, mClient:Landroid/view/IWindow;

    instance-of v2, v2, Landroid/view/IWindow$Stub;

    if-eqz v2, :cond_28b

    .line 2367
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v20, v0

    new-instance v2, Lcom/android/server/wm/WindowState$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v12}, Lcom/android/server/wm/WindowState$2;-><init>(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;Landroid/graphics/Rect;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 2394
    :goto_247
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_25e

    invoke-virtual/range {p0 .. p0}, getDisplayId()I

    move-result v2

    if-nez v2, :cond_25e

    .line 2396
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 2400
    :cond_25e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mOverscanInsetsChanged:Z

    .line 2401
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mContentInsetsChanged:Z

    .line 2402
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mVisibleInsetsChanged:Z

    .line 2403
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mStableInsetsChanged:Z

    .line 2404
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mOutsetsChanged:Z

    .line 2405
    move-object/from16 v0, p0

    iget-object v2, v0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .line 2433
    .end local v4    # "frame":Landroid/graphics/Rect;
    .end local v5    # "overscanInsets":Landroid/graphics/Rect;
    .end local v6    # "contentInsets":Landroid/graphics/Rect;
    .end local v7    # "visibleInsets":Landroid/graphics/Rect;
    .end local v8    # "stableInsets":Landroid/graphics/Rect;
    .end local v9    # "outsets":Landroid/graphics/Rect;
    .end local v10    # "reportDraw":Z
    .end local v11    # "newConfig":Landroid/content/res/Configuration;
    .end local v12    # "cocktailBarFrame":Landroid/graphics/Rect;
    .end local v13    # "configChanged":Z
    .end local v14    # "dupConfig":Landroid/content/res/Configuration;
    .end local v16    # "lastRelayoutConfigChanged":Z
    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v18    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v19    # "tmpConfig":Landroid/content/res/Configuration;
    :goto_27e
    return-void

    .line 2287
    .restart local v13    # "configChanged":Z
    .restart local v18    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_27f
    sget-object v17, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    goto/16 :goto_4e

    .line 2347
    .restart local v4    # "frame":Landroid/graphics/Rect;
    .restart local v5    # "overscanInsets":Landroid/graphics/Rect;
    .restart local v6    # "contentInsets":Landroid/graphics/Rect;
    .restart local v7    # "visibleInsets":Landroid/graphics/Rect;
    .restart local v8    # "stableInsets":Landroid/graphics/Rect;
    .restart local v9    # "outsets":Landroid/graphics/Rect;
    .restart local v14    # "dupConfig":Landroid/content/res/Configuration;
    .restart local v16    # "lastRelayoutConfigChanged":Z
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_283
    const/4 v10, 0x0

    goto/16 :goto_1e5

    .line 2358
    .restart local v10    # "reportDraw":Z
    .restart local v19    # "tmpConfig":Landroid/content/res/Configuration;
    :cond_286
    move-object/from16 v19, v14

    goto :goto_211

    .line 2361
    :cond_289
    const/4 v11, 0x0

    goto :goto_217

    .line 2380
    .restart local v11    # "newConfig":Landroid/content/res/Configuration;
    .restart local v12    # "cocktailBarFrame":Landroid/graphics/Rect;
    :cond_28b
    move-object/from16 v0, p0

    iget-object v3, v0, mClient:Landroid/view/IWindow;

    invoke-interface/range {v3 .. v12}, Landroid/view/IWindow;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;Landroid/graphics/Rect;)V
    :try_end_292
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_292} :catch_293

    goto :goto_247

    .line 2406
    .end local v4    # "frame":Landroid/graphics/Rect;
    .end local v5    # "overscanInsets":Landroid/graphics/Rect;
    .end local v6    # "contentInsets":Landroid/graphics/Rect;
    .end local v7    # "visibleInsets":Landroid/graphics/Rect;
    .end local v8    # "stableInsets":Landroid/graphics/Rect;
    .end local v9    # "outsets":Landroid/graphics/Rect;
    .end local v10    # "reportDraw":Z
    .end local v11    # "newConfig":Landroid/content/res/Configuration;
    .end local v12    # "cocktailBarFrame":Landroid/graphics/Rect;
    .end local v13    # "configChanged":Z
    .end local v14    # "dupConfig":Landroid/content/res/Configuration;
    .end local v16    # "lastRelayoutConfigChanged":Z
    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v18    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v19    # "tmpConfig":Landroid/content/res/Configuration;
    :catch_293
    move-exception v15

    .line 2408
    .local v15, "e":Landroid/os/RemoteException;
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "The process of this window already died: "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, " : "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    move-object/from16 v0, p0

    iget-boolean v2, v0, mExiting:Z

    if-eqz v2, :cond_342

    .line 2410
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Force reset mOverscanInsetsChanged="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, mOverscanInsetsChanged:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", mContentInsetsChanged="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, mContentInsetsChanged:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", mVisibleInsetsChanged="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, mVisibleInsetsChanged:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", mWinAnimator.mSurfaceResized="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mOverscanInsetsChanged:Z

    .line 2416
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mContentInsetsChanged:Z

    .line 2417
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mVisibleInsetsChanged:Z

    .line 2418
    move-object/from16 v0, p0

    iget-object v2, v0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .line 2421
    :cond_342
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mOrientationChanging:Z

    .line 2422
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    move-wide/from16 v20, v0

    sub-long v2, v2, v20

    long-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, mLastFreezeDuration:I

    .line 2425
    invoke-virtual/range {p0 .. p0}, stopWaitingForOrientation()V

    .line 2428
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to report \'resized\' to the client of "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", removing this window."

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2431
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    goto/16 :goto_27e
.end method

.method public setAppOpVisibilityLw(Z)V
    .registers 4
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1943
    iget-boolean v0, p0, mAppOpVisibility:Z

    if-eq v0, p1, :cond_c

    .line 1944
    iput-boolean p1, p0, mAppOpVisibility:Z

    .line 1945
    if-eqz p1, :cond_d

    .line 1952
    invoke-virtual {p0, v1, v1}, showLw(ZZ)Z

    .line 1957
    :cond_c
    :goto_c
    return-void

    .line 1954
    :cond_d
    invoke-virtual {p0, v1, v1}, hideLw(ZZ)Z

    goto :goto_c
.end method

.method setInputChannel(Landroid/view/InputChannel;)V
    .registers 4
    .param p1, "inputChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 1740
    iget-object v0, p0, mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_c

    .line 1741
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Window already has an input channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1744
    :cond_c
    iput-object p1, p0, mInputChannel:Landroid/view/InputChannel;

    .line 1745
    iget-object v0, p0, mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object p1, v0, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 1746
    return-void
.end method

.method setInsetsChanged()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1249
    iget-boolean v3, p0, mOverscanInsetsChanged:Z

    iget-object v0, p0, mLastOverscanInsets:Landroid/graphics/Rect;

    iget-object v4, p0, mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    move v0, v1

    :goto_f
    or-int/2addr v0, v3

    iput-boolean v0, p0, mOverscanInsetsChanged:Z

    .line 1250
    iget-boolean v3, p0, mContentInsetsChanged:Z

    iget-object v0, p0, mLastContentInsets:Landroid/graphics/Rect;

    iget-object v4, p0, mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    move v0, v1

    :goto_1f
    or-int/2addr v0, v3

    iput-boolean v0, p0, mContentInsetsChanged:Z

    .line 1251
    iget-boolean v3, p0, mVisibleInsetsChanged:Z

    iget-object v0, p0, mLastVisibleInsets:Landroid/graphics/Rect;

    iget-object v4, p0, mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    move v0, v1

    :goto_2f
    or-int/2addr v0, v3

    iput-boolean v0, p0, mVisibleInsetsChanged:Z

    .line 1252
    iget-boolean v3, p0, mStableInsetsChanged:Z

    iget-object v0, p0, mLastStableInsets:Landroid/graphics/Rect;

    iget-object v4, p0, mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    move v0, v1

    :goto_3f
    or-int/2addr v0, v3

    iput-boolean v0, p0, mStableInsetsChanged:Z

    .line 1253
    iget-boolean v3, p0, mOutsetsChanged:Z

    iget-object v0, p0, mLastOutsets:Landroid/graphics/Rect;

    iget-object v4, p0, mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    move v0, v1

    :goto_4f
    or-int/2addr v0, v3

    iput-boolean v0, p0, mOutsetsChanged:Z

    .line 1254
    iget-boolean v0, p0, mOverscanInsetsChanged:Z

    if-nez v0, :cond_62

    iget-boolean v0, p0, mContentInsetsChanged:Z

    if-nez v0, :cond_62

    iget-boolean v0, p0, mVisibleInsetsChanged:Z

    if-nez v0, :cond_62

    iget-boolean v0, p0, mOutsetsChanged:Z

    if-eqz v0, :cond_63

    :cond_62
    move v2, v1

    :cond_63
    return v2

    :cond_64
    move v0, v2

    .line 1249
    goto :goto_f

    :cond_66
    move v0, v2

    .line 1250
    goto :goto_1f

    :cond_68
    move v0, v2

    .line 1251
    goto :goto_2f

    :cond_6a
    move v0, v2

    .line 1252
    goto :goto_3f

    :cond_6c
    move v0, v2

    .line 1253
    goto :goto_4f
.end method

.method public setShowToOwnerOnlyLocked(Z)V
    .registers 2
    .param p1, "showToOwnerOnly"    # Z

    .prologue
    .line 2025
    iput-boolean p1, p0, mShowToOwnerOnly:Z

    .line 2026
    return-void
.end method

.method public setWillBeHideBlockMain(Z)V
    .registers 5
    .param p1, "willBeHide"    # Z

    .prologue
    .line 3148
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_44

    .line 3149
    const-string v0, "WindowState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWillBeHideBlockMain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->willBeHideBlockMain:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3154
    :cond_44
    iget-object v0, p0, mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean p1, v0, Lcom/android/server/wm/WindowToken;->willBeHideBlockMain:Z

    .line 3155
    return-void
.end method

.method public setWindowFlagFixedBound(Z)V
    .registers 7
    .param p1, "bFixed"    # Z

    .prologue
    const/4 v4, -0x1

    .line 3034
    const/16 v0, 0x202

    .line 3036
    .local v0, "fixedFlag":I
    invoke-virtual {p0}, isFloating()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3037
    and-int/lit16 v0, v0, -0x201

    .line 3039
    :cond_b
    if-eqz p1, :cond_33

    .line 3040
    iget v1, p0, mSavedFlags:I

    if-eq v1, v4, :cond_2c

    .line 3041
    iget-object v1, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p0, mSavedFlags:I

    and-int/2addr v2, v0

    xor-int/lit8 v3, v0, -0x1

    xor-int/2addr v2, v3

    and-int/2addr v1, v2

    iput v1, p0, mSavedFlags:I

    .line 3046
    :goto_1e
    iget-object v1, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3047
    iget-object v1, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3055
    :cond_2b
    :goto_2b
    return-void

    .line 3044
    :cond_2c
    iget-object v1, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, p0, mSavedFlags:I

    goto :goto_1e

    .line 3049
    :cond_33
    iget v1, p0, mSavedFlags:I

    if-eq v1, v4, :cond_2b

    .line 3050
    iget-object v1, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3051
    iget-object v1, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, p0, mSavedFlags:I

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3052
    iput v4, p0, mSavedFlags:I

    goto :goto_2b
.end method

.method shouldWaitForOrientation()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3116
    iget-boolean v1, p0, mHasSurface:Z

    if-nez v1, :cond_2a

    iget-boolean v1, p0, mRelayoutCalled:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v0, :cond_2a

    iget-boolean v1, p0, mPolicyVisibility:Z

    if-eqz v1, :cond_2a

    iget-boolean v1, p0, mAttachedHidden:Z

    if-nez v1, :cond_2a

    iget-object v1, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_2a

    iget-object v1, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_2a

    iget-boolean v1, p0, mExiting:Z

    if-nez v1, :cond_2a

    iget-boolean v1, p0, mDestroying:Z

    if-nez v1, :cond_2a

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public showLw(Z)Z
    .registers 3
    .param p1, "doAnimation"    # Z

    .prologue
    .line 1816
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, showLw(ZZ)Z

    move-result v0

    return v0
.end method

.method showLw(ZZ)Z
    .registers 4
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z

    .prologue
    .line 1821
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, showLw(ZZZ)Z

    move-result v0

    return v0
.end method

.method public showLw(ZZZ)Z
    .registers 11
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z
    .param p3, "withSubWindow"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1827
    invoke-virtual {p0}, isHiddenFromUserLocked()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1878
    :cond_8
    :goto_8
    return v2

    .line 1830
    :cond_9
    iget-boolean v4, p0, mAppOpVisibility:Z

    if-eqz v4, :cond_8

    .line 1834
    iget-boolean v4, p0, mPolicyVisibility:Z

    if-eqz v4, :cond_15

    iget-boolean v4, p0, mPolicyVisibilityAfterAnim:Z

    if-nez v4, :cond_8

    .line 1840
    :cond_15
    if-eqz p3, :cond_2d

    .line 1841
    iget-object v4, p0, mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1842
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, v2, v2, v2}, showLw(ZZZ)Z

    goto :goto_1d

    .line 1847
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_2d
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v4, :cond_49

    const-string v4, "WindowState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Policy visibility true: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :cond_49
    if-eqz p1, :cond_85

    .line 1849
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v4, :cond_78

    const-string v4, "WindowState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "doAnimation: mPolicyVisibility="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, mPolicyVisibility:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mAnimation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    :cond_78
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->okToDisplay(I)Z

    move-result v4

    if-nez v4, :cond_ae

    .line 1852
    const/4 p1, 0x0

    .line 1863
    :cond_85
    :goto_85
    iget-object v4, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_99

    iget-object v4, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->mHiddenByPolicyVisiblity:Z

    if-eqz v4, :cond_99

    .line 1864
    iget-object v4, p0, mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v2, v4, Lcom/android/server/wm/AppWindowToken;->mHiddenByPolicyVisiblity:Z

    .line 1865
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x2

    invoke-virtual {v2, p0, v4}, Lcom/android/server/wm/WindowManagerService;->notifyMultiWindowStateChanged(Lcom/android/server/wm/WindowState;I)V

    .line 1870
    :cond_99
    iput-boolean v3, p0, mPolicyVisibility:Z

    .line 1871
    iput-boolean v3, p0, mPolicyVisibilityAfterAnim:Z

    .line 1872
    if-eqz p1, :cond_a4

    .line 1873
    iget-object v2, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v3, v3}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1875
    :cond_a4
    if-eqz p2, :cond_ab

    .line 1876
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_ab
    move v2, v3

    .line 1878
    goto/16 :goto_8

    .line 1853
    :cond_ae
    iget-boolean v4, p0, mPolicyVisibility:Z

    if-eqz v4, :cond_85

    iget-object v4, p0, mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_85

    .line 1857
    const/4 p1, 0x0

    goto :goto_85
.end method

.method startWaitingForOrientation()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 3089
    iget-boolean v0, p0, mWaitingForOrientation:Z

    if-nez v0, :cond_2d

    .line 3090
    iput-boolean v1, p0, mWaitingForOrientation:Z

    .line 3091
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mHasAppWindowForWaitingForOrientation:Z

    .line 3092
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_2d

    .line 3093
    const-string v0, "WindowState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startWaitingForOrientation() w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3096
    :cond_2d
    return-void
.end method

.method stopWaitingForOrientation()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3099
    iget-boolean v0, p0, mWaitingForOrientation:Z

    if-eqz v0, :cond_2d

    .line 3100
    iput-boolean v1, p0, mWaitingForOrientation:Z

    .line 3101
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mHasAppWindowForWaitingForOrientation:Z

    .line 3102
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_2d

    .line 3103
    const-string v0, "WindowState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopWaitingForOrientation() w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3106
    :cond_2d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2731
    iget-object v1, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2732
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_12

    .line 2733
    :cond_e
    iget-object v1, p0, mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2735
    :cond_12
    iget-object v1, p0, mStringNameCache:Ljava/lang/String;

    if-eqz v1, :cond_20

    iget-object v1, p0, mLastTitle:Ljava/lang/CharSequence;

    if-ne v1, v0, :cond_20

    iget-boolean v1, p0, mWasExiting:Z

    iget-boolean v2, p0, mExiting:Z

    if-eq v1, v2, :cond_7b

    .line 2736
    :cond_20
    iput-object v0, p0, mLastTitle:Ljava/lang/CharSequence;

    .line 2737
    iget-boolean v1, p0, mExiting:Z

    iput-boolean v1, p0, mWasExiting:Z

    .line 2738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mLastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, mExiting:Z

    if-eqz v1, :cond_7e

    const-string v1, " EXITING}"

    :goto_71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mStringNameCache:Ljava/lang/String;

    .line 2745
    :cond_7b
    iget-object v1, p0, mStringNameCache:Ljava/lang/String;

    return-object v1

    .line 2738
    :cond_7e
    const-string/jumbo v1, "}"

    goto :goto_71
.end method

.method public unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;

    .prologue
    .line 2445
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2446
    :try_start_5
    iget-object v0, p0, mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_e

    .line 2447
    iget-object v0, p0, mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2449
    :cond_e
    monitor-exit v1

    .line 2450
    return-void

    .line 2449
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public willBeHideBlockMain()Z
    .registers 2

    .prologue
    .line 3144
    iget-object v0, p0, mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->willBeHideBlockMain:Z

    return v0
.end method

.method public willBeHideSViewCoverOnce()Z
    .registers 2

    .prologue
    .line 2483
    iget-object v0, p0, mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->willBeHideSViewCoverOnce:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->disableHideSViewCoverOnce:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
