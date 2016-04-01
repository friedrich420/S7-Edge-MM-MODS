.class final Landroid/view/View$AttachInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AttachInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$AttachInfo$InvalidateInfo;,
        Landroid/view/View$AttachInfo$Callbacks;
    }
.end annotation


# instance fields
.field mAccessibilityFetchFlags:I

.field mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

.field mAccessibilityWindowId:I

.field mApplicationScale:F

.field mCanvas:Landroid/graphics/Canvas;

.field final mContentInsets:Landroid/graphics/Rect;

.field mDebugLayout:Z

.field mDisabledSystemUiVisibility:I

.field mDisplay:Landroid/view/Display;

.field mDisplayState:I

.field mDrawingTime:J

.field mForceReportNewAttributes:Z

.field final mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mGlobalSystemUiVisibility:I

.field final mHandler:Landroid/os/Handler;

.field mHardwareAccelerated:Z

.field mHardwareAccelerationRequested:Z

.field mHardwareRenderer:Landroid/view/HardwareRenderer;

.field mHasNonEmptyGivenInternalInsets:Z

.field mHasSystemUiListeners:Z

.field mHasWindowFocus:Z

.field mHighContrastText:Z

.field mIWindowId:Landroid/view/IWindowId;

.field mIgnoreDirtyState:Z

.field mInTouchMode:Z

.field final mInvalidateChildLocation:[I

.field mIsOpen:Z

.field mKeepScreenOn:Z

.field final mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

.field final mOutsets:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mOverscanRequested:Z

.field mPanelParentWindowToken:Landroid/os/IBinder;

.field mPendingAnimatingRenderNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/RenderNode;",
            ">;"
        }
    .end annotation
.end field

.field final mPoint:Landroid/graphics/Point;

.field mRecomputeGlobalAttributes:Z

.field final mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

.field mRootView:Landroid/view/View;

.field mScalingRequired:Z

.field final mScrollContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mSession:Landroid/view/IWindowSession;

.field mSetIgnoreDirtyState:Z

.field final mStableInsets:Landroid/graphics/Rect;

.field mSystemUiVisibility:I

.field final mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpInvalRect:Landroid/graphics/Rect;

.field final mTmpLocation:[I

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field final mTmpOutline:Landroid/graphics/Outline;

.field final mTmpRectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpTransformLocation:[F

.field final mTmpTransformRect:Landroid/graphics/RectF;

.field final mTmpTransformRect1:Landroid/graphics/RectF;

.field final mTmpTransformation:Landroid/view/animation/Transformation;

.field final mTransparentLocation:[I

.field final mTreeObserver:Landroid/view/ViewTreeObserver;

.field mTurnOffWindowResizeAnim:Z

.field mUnbufferedDispatchRequested:Z

.field mUse32BitDrawingCache:Z

.field mViewRequestingLayout:Landroid/view/View;

.field final mViewRootImpl:Landroid/view/ViewRootImpl;

.field mViewScrollChanged:Z

.field mViewVisibilityChanged:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/IWindow;

.field mWindowId:Landroid/view/WindowId;

.field mWindowLeft:I

.field final mWindowToken:Landroid/os/IBinder;

.field mWindowTop:I

.field mWindowVisibility:I


# direct methods
.method constructor <init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V
    .registers 12
    .param p1, "session"    # Landroid/view/IWindowSession;
    .param p2, "window"    # Landroid/view/IWindow;
    .param p3, "display"    # Landroid/view/Display;
    .param p4, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "effectPlayer"    # Landroid/view/View$AttachInfo$Callbacks;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 23272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22951
    iput v3, p0, mDisplayState:I

    .line 22982
    iput-boolean v4, p0, mIsOpen:Z

    .line 22995
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mOverscanInsets:Landroid/graphics/Rect;

    .line 23002
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mContentInsets:Landroid/graphics/Rect;

    .line 23009
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mVisibleInsets:Landroid/graphics/Rect;

    .line 23016
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mStableInsets:Landroid/graphics/Rect;

    .line 23022
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mOutsets:Landroid/graphics/Rect;

    .line 23031
    new-instance v1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v1, p0, mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 23044
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mScrollContainers:Ljava/util/ArrayList;

    .line 23046
    new-instance v1, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v1}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v1, p0, mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    .line 23073
    iput-boolean v3, p0, mSetIgnoreDirtyState:Z

    .line 23148
    new-array v1, v2, [I

    iput-object v1, p0, mTransparentLocation:[I

    .line 23154
    new-array v1, v2, [I

    iput-object v1, p0, mInvalidateChildLocation:[I

    .line 23160
    new-array v1, v2, [I

    iput-object v1, p0, mTmpLocation:[I

    .line 23166
    new-array v1, v2, [F

    iput-object v1, p0, mTmpTransformLocation:[F

    .line 23172
    new-instance v1, Landroid/view/ViewTreeObserver;

    invoke-direct {v1}, Landroid/view/ViewTreeObserver;-><init>()V

    iput-object v1, p0, mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 23194
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mTmpInvalRect:Landroid/graphics/Rect;

    .line 23199
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, mTmpTransformRect:Landroid/graphics/RectF;

    .line 23204
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, mTmpTransformRect1:Landroid/graphics/RectF;

    .line 23209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mTmpRectList:Ljava/util/List;

    .line 23214
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, mTmpMatrix:Landroid/graphics/Matrix;

    .line 23219
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, mTmpTransformation:Landroid/view/animation/Transformation;

    .line 23224
    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    iput-object v1, p0, mTmpOutline:Landroid/graphics/Outline;

    .line 23229
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, mTempArrayList:Ljava/util/ArrayList;

    .line 23234
    const v1, 0x7fffffff

    iput v1, p0, mAccessibilityWindowId:I

    .line 23252
    const-string v1, "debug.layout"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, mDebugLayout:Z

    .line 23257
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, mPoint:Landroid/graphics/Point;

    .line 23273
    iput-object p1, p0, mSession:Landroid/view/IWindowSession;

    .line 23274
    iput-object p2, p0, mWindow:Landroid/view/IWindow;

    .line 23275
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, mWindowToken:Landroid/os/IBinder;

    .line 23276
    iput-object p3, p0, mDisplay:Landroid/view/Display;

    .line 23277
    iput-object p4, p0, mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 23278
    iput-object p5, p0, mHandler:Landroid/os/Handler;

    .line 23279
    iput-object p6, p0, mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    .line 23282
    iget-object v1, p0, mSession:Landroid/view/IWindowSession;

    if-eqz v1, :cond_c7

    .line 23284
    :try_start_bf
    iget-object v1, p0, mSession:Landroid/view/IWindowSession;

    invoke-interface {v1}, Landroid/view/IWindowSession;->getCoverStateSwitch()Z

    move-result v1

    iput-boolean v1, p0, mIsOpen:Z
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_bf .. :try_end_c7} :catch_c8

    .line 23291
    :cond_c7
    :goto_c7
    return-void

    .line 23285
    :catch_c8
    move-exception v0

    .line 23286
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v4, p0, mIsOpen:Z

    goto :goto_c7
.end method


# virtual methods
.method public setDisplay(Landroid/view/Display;)V
    .registers 2
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 23301
    return-void
.end method
