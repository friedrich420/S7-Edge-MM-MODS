.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$MyWindow;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_DCS:Z

.field private static final DYNAMIC_COLOR_SCALING_ENABLED:Z = true

.field static final GET_NEW_SURFACE_MSG:I = 0x2

.field static final KEEP_SCREEN_ON_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceView"

.field private static final TAG_DCS:Ljava/lang/String; = "SRIB_DCS:SurfaceView"

.field static final UPDATE_WINDOW_MSG:I = 0x3


# instance fields
.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mConfiguration:Landroid/content/res/Configuration;

.field final mContentInsets:Landroid/graphics/Rect;

.field private mCurrentOrientation:I

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mDrawingStopped:Z

.field mFormat:I

.field private mGlobalListenersAdded:Z

.field final mHandler:Landroid/os/Handler;

.field mHaveFrame:Z

.field mHeight:I

.field mIsCreating:Z

.field private mIsDcsEnabledApp:Z

.field private mIsFixedOrientation:Z

.field public mIsSixteenBitApp:I

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field mLeft:I

.field final mLocation:[I

.field private mNeedForceDrawAtSetFrame:Z

.field final mNewSurface:Landroid/view/Surface;

.field final mOutsets:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mReportDrawNeeded:Z

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field private mRequestedX:I

.field private mRequestedY:I

.field private mSVBufferCount:I

.field final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSession:Landroid/view/IWindowSession;

.field final mStableInsets:Landroid/graphics/Rect;

.field final mSurface:Landroid/view/Surface;

.field mSurfaceCreated:Z

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mTargetHeight:I

.field mTargetWidth:I

.field mTop:I

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mUpdateWindowNeeded:Z

.field mViewVisibility:Z

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field mWindow:Landroid/view/SurfaceView$MyWindow;

.field mWindowType:I

.field mWindowVisibility:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 142
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, DEBUG_DCS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 216
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mCallbacks:Ljava/util/ArrayList;

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, mLocation:[I

    .line 111
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 112
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, mSurface:Landroid/view/Surface;

    .line 113
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, mNewSurface:Landroid/view/Surface;

    .line 114
    iput-boolean v1, p0, mDrawingStopped:Z

    .line 116
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mVisibleInsets:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mWinFrame:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mOverscanInsets:Landroid/graphics/Rect;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mContentInsets:Landroid/graphics/Rect;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mStableInsets:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mOutsets:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, mConfiguration:Landroid/content/res/Configuration;

    .line 132
    iput v2, p0, mSVBufferCount:I

    .line 137
    iput v3, p0, mIsSixteenBitApp:I

    .line 139
    iput-boolean v3, p0, mIsDcsEnabledApp:Z

    .line 145
    const/16 v0, 0x3e9

    iput v0, p0, mWindowType:I

    .line 147
    iput-boolean v3, p0, mIsCreating:Z

    .line 149
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 166
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 174
    iput-boolean v3, p0, mRequestedVisible:Z

    .line 175
    iput-boolean v3, p0, mWindowVisibility:Z

    .line 176
    iput-boolean v3, p0, mViewVisibility:Z

    .line 177
    iput v2, p0, mRequestedWidth:I

    .line 178
    iput v2, p0, mRequestedHeight:I

    .line 179
    iput v2, p0, mTargetWidth:I

    .line 180
    iput v2, p0, mTargetHeight:I

    .line 185
    const/4 v0, 0x4

    iput v0, p0, mRequestedFormat:I

    .line 187
    iput-boolean v3, p0, mHaveFrame:Z

    .line 188
    iput-boolean v3, p0, mSurfaceCreated:Z

    .line 189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLastLockTime:J

    .line 191
    iput-boolean v3, p0, mVisible:Z

    .line 192
    iput v2, p0, mLeft:I

    .line 193
    iput v2, p0, mTop:I

    .line 194
    iput v2, p0, mWidth:I

    .line 195
    iput v2, p0, mHeight:I

    .line 196
    iput v2, p0, mFormat:I

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mSurfaceFrame:Landroid/graphics/Rect;

    .line 198
    iput v2, p0, mLastSurfaceWidth:I

    iput v2, p0, mLastSurfaceHeight:I

    .line 203
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 394
    iput v2, p0, mCurrentOrientation:I

    .line 395
    iput-boolean v3, p0, mNeedForceDrawAtSetFrame:Z

    .line 849
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1027
    iput-boolean v3, p0, mIsFixedOrientation:Z

    .line 1028
    iput v3, p0, mRequestedX:I

    .line 1029
    iput v3, p0, mRequestedY:I

    .line 220
    invoke-direct {p0, p1}, init(Landroid/content/Context;)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 227
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mCallbacks:Ljava/util/ArrayList;

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, mLocation:[I

    .line 111
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 112
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, mSurface:Landroid/view/Surface;

    .line 113
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, mNewSurface:Landroid/view/Surface;

    .line 114
    iput-boolean v1, p0, mDrawingStopped:Z

    .line 116
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mVisibleInsets:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mWinFrame:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mOverscanInsets:Landroid/graphics/Rect;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mContentInsets:Landroid/graphics/Rect;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mStableInsets:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mOutsets:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, mConfiguration:Landroid/content/res/Configuration;

    .line 132
    iput v2, p0, mSVBufferCount:I

    .line 137
    iput v3, p0, mIsSixteenBitApp:I

    .line 139
    iput-boolean v3, p0, mIsDcsEnabledApp:Z

    .line 145
    const/16 v0, 0x3e9

    iput v0, p0, mWindowType:I

    .line 147
    iput-boolean v3, p0, mIsCreating:Z

    .line 149
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 166
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 174
    iput-boolean v3, p0, mRequestedVisible:Z

    .line 175
    iput-boolean v3, p0, mWindowVisibility:Z

    .line 176
    iput-boolean v3, p0, mViewVisibility:Z

    .line 177
    iput v2, p0, mRequestedWidth:I

    .line 178
    iput v2, p0, mRequestedHeight:I

    .line 179
    iput v2, p0, mTargetWidth:I

    .line 180
    iput v2, p0, mTargetHeight:I

    .line 185
    const/4 v0, 0x4

    iput v0, p0, mRequestedFormat:I

    .line 187
    iput-boolean v3, p0, mHaveFrame:Z

    .line 188
    iput-boolean v3, p0, mSurfaceCreated:Z

    .line 189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLastLockTime:J

    .line 191
    iput-boolean v3, p0, mVisible:Z

    .line 192
    iput v2, p0, mLeft:I

    .line 193
    iput v2, p0, mTop:I

    .line 194
    iput v2, p0, mWidth:I

    .line 195
    iput v2, p0, mHeight:I

    .line 196
    iput v2, p0, mFormat:I

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mSurfaceFrame:Landroid/graphics/Rect;

    .line 198
    iput v2, p0, mLastSurfaceWidth:I

    iput v2, p0, mLastSurfaceHeight:I

    .line 203
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 394
    iput v2, p0, mCurrentOrientation:I

    .line 395
    iput-boolean v3, p0, mNeedForceDrawAtSetFrame:Z

    .line 849
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1027
    iput-boolean v3, p0, mIsFixedOrientation:Z

    .line 1028
    iput v3, p0, mRequestedX:I

    .line 1029
    iput v3, p0, mRequestedY:I

    .line 231
    invoke-direct {p0, p1}, init(Landroid/content/Context;)V

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 238
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mCallbacks:Ljava/util/ArrayList;

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, mLocation:[I

    .line 111
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 112
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, mSurface:Landroid/view/Surface;

    .line 113
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, mNewSurface:Landroid/view/Surface;

    .line 114
    iput-boolean v1, p0, mDrawingStopped:Z

    .line 116
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mVisibleInsets:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mWinFrame:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mOverscanInsets:Landroid/graphics/Rect;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mContentInsets:Landroid/graphics/Rect;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mStableInsets:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mOutsets:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, mConfiguration:Landroid/content/res/Configuration;

    .line 132
    iput v2, p0, mSVBufferCount:I

    .line 137
    iput v3, p0, mIsSixteenBitApp:I

    .line 139
    iput-boolean v3, p0, mIsDcsEnabledApp:Z

    .line 145
    const/16 v0, 0x3e9

    iput v0, p0, mWindowType:I

    .line 147
    iput-boolean v3, p0, mIsCreating:Z

    .line 149
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 166
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 174
    iput-boolean v3, p0, mRequestedVisible:Z

    .line 175
    iput-boolean v3, p0, mWindowVisibility:Z

    .line 176
    iput-boolean v3, p0, mViewVisibility:Z

    .line 177
    iput v2, p0, mRequestedWidth:I

    .line 178
    iput v2, p0, mRequestedHeight:I

    .line 179
    iput v2, p0, mTargetWidth:I

    .line 180
    iput v2, p0, mTargetHeight:I

    .line 185
    const/4 v0, 0x4

    iput v0, p0, mRequestedFormat:I

    .line 187
    iput-boolean v3, p0, mHaveFrame:Z

    .line 188
    iput-boolean v3, p0, mSurfaceCreated:Z

    .line 189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLastLockTime:J

    .line 191
    iput-boolean v3, p0, mVisible:Z

    .line 192
    iput v2, p0, mLeft:I

    .line 193
    iput v2, p0, mTop:I

    .line 194
    iput v2, p0, mWidth:I

    .line 195
    iput v2, p0, mHeight:I

    .line 196
    iput v2, p0, mFormat:I

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mSurfaceFrame:Landroid/graphics/Rect;

    .line 198
    iput v2, p0, mLastSurfaceWidth:I

    iput v2, p0, mLastSurfaceHeight:I

    .line 203
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 394
    iput v2, p0, mCurrentOrientation:I

    .line 395
    iput-boolean v3, p0, mNeedForceDrawAtSetFrame:Z

    .line 849
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1027
    iput-boolean v3, p0, mIsFixedOrientation:Z

    .line 1028
    iput v3, p0, mRequestedX:I

    .line 1029
    iput v3, p0, mRequestedY:I

    .line 242
    invoke-direct {p0, p1}, init(Landroid/content/Context;)V

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 249
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mCallbacks:Ljava/util/ArrayList;

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, mLocation:[I

    .line 111
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 112
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, mSurface:Landroid/view/Surface;

    .line 113
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, mNewSurface:Landroid/view/Surface;

    .line 114
    iput-boolean v1, p0, mDrawingStopped:Z

    .line 116
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mVisibleInsets:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mWinFrame:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mOverscanInsets:Landroid/graphics/Rect;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mContentInsets:Landroid/graphics/Rect;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mStableInsets:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mOutsets:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, mConfiguration:Landroid/content/res/Configuration;

    .line 132
    iput v2, p0, mSVBufferCount:I

    .line 137
    iput v3, p0, mIsSixteenBitApp:I

    .line 139
    iput-boolean v3, p0, mIsDcsEnabledApp:Z

    .line 145
    const/16 v0, 0x3e9

    iput v0, p0, mWindowType:I

    .line 147
    iput-boolean v3, p0, mIsCreating:Z

    .line 149
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 166
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 174
    iput-boolean v3, p0, mRequestedVisible:Z

    .line 175
    iput-boolean v3, p0, mWindowVisibility:Z

    .line 176
    iput-boolean v3, p0, mViewVisibility:Z

    .line 177
    iput v2, p0, mRequestedWidth:I

    .line 178
    iput v2, p0, mRequestedHeight:I

    .line 179
    iput v2, p0, mTargetWidth:I

    .line 180
    iput v2, p0, mTargetHeight:I

    .line 185
    const/4 v0, 0x4

    iput v0, p0, mRequestedFormat:I

    .line 187
    iput-boolean v3, p0, mHaveFrame:Z

    .line 188
    iput-boolean v3, p0, mSurfaceCreated:Z

    .line 189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLastLockTime:J

    .line 191
    iput-boolean v3, p0, mVisible:Z

    .line 192
    iput v2, p0, mLeft:I

    .line 193
    iput v2, p0, mTop:I

    .line 194
    iput v2, p0, mWidth:I

    .line 195
    iput v2, p0, mHeight:I

    .line 196
    iput v2, p0, mFormat:I

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mSurfaceFrame:Landroid/graphics/Rect;

    .line 198
    iput v2, p0, mLastSurfaceWidth:I

    iput v2, p0, mLastSurfaceHeight:I

    .line 203
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 394
    iput v2, p0, mCurrentOrientation:I

    .line 395
    iput-boolean v3, p0, mNeedForceDrawAtSetFrame:Z

    .line 849
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1027
    iput-boolean v3, p0, mIsFixedOrientation:Z

    .line 1028
    iput v3, p0, mRequestedX:I

    .line 1029
    iput v3, p0, mRequestedY:I

    .line 253
    invoke-direct {p0, p1}, init(Landroid/content/Context;)V

    .line 257
    return-void
.end method

.method static synthetic access$000(Landroid/view/SurfaceView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/SurfaceView;

    .prologue
    .line 102
    iget-boolean v0, p0, mIsDcsEnabledApp:Z

    return v0
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .registers 4

    .prologue
    .line 767
    iget-object v2, p0, mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 768
    :try_start_3
    iget-object v1, p0, mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Landroid/view/SurfaceHolder$Callback;

    .line 769
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v1, p0, mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 770
    monitor-exit v2

    .line 771
    return-object v0

    .line 770
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private init()V
    .registers 2

    .prologue
    .line 260
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setWillNotDraw(Z)V

    .line 261
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 7
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 267
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 268
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-boolean v2, v1, Landroid/content/pm/PackageInfo;->isDcsEnabledApp:Z

    iput-boolean v2, p0, mIsDcsEnabledApp:Z

    .line 269
    iget v2, v1, Landroid/content/pm/PackageInfo;->dcsFormat:I

    iput v2, p0, mFormat:I

    .line 270
    iget-boolean v2, p0, mIsDcsEnabledApp:Z

    if-eqz v2, :cond_4e

    iget v2, p0, mFormat:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4e

    .line 271
    sget-boolean v2, DEBUG_DCS:Z

    if-eqz v2, :cond_4a

    .line 272
    const-string v2, "SRIB_DCS:SurfaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting top Z-order for RGB565 for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Format"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_4a
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, setZOrderOnTop(Z)V
    :try_end_4e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_4e} :catch_52

    .line 280
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_4e
    :goto_4e
    invoke-direct {p0}, init()V

    .line 281
    return-void

    .line 275
    :catch_52
    move-exception v0

    .line 276
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "SRIB_DCS:SurfaceView"

    const-string v3, "SV init NameNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method

.method private setSamsungFlags(II)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 1127
    iget-object v0, p0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1128
    return-void
.end method


# virtual methods
.method public addSamsungFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .prologue
    .line 1115
    invoke-direct {p0, p1, p1}, setSamsungFlags(II)V

    .line 1116
    return-void
.end method

.method public clearSamsungFlags(I)V
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 1123
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, setSamsungFlags(II)V

    .line 1124
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 447
    iget v0, p0, mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_14

    .line 449
    iget v0, p0, mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_14

    .line 451
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 454
    :cond_14
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 455
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 435
    iget v0, p0, mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_12

    .line 437
    iget v0, p0, mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_12

    .line 439
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 442
    :cond_12
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 443
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 11
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 399
    iget v0, p0, mWindowType:I

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_b

    .line 400
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v7

    .line 430
    :cond_a
    :goto_a
    return v7

    .line 406
    :cond_b
    invoke-virtual {p0}, isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 407
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v7

    goto :goto_a

    .line 412
    :cond_16
    const/4 v7, 0x1

    .line 413
    .local v7, "opaque":Z
    iget v0, p0, mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2b

    .line 415
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v7

    .line 427
    :cond_21
    :goto_21
    iget v0, p0, mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 428
    const/4 v7, 0x0

    goto :goto_a

    .line 416
    :cond_2b
    if-eqz p1, :cond_21

    .line 417
    invoke-virtual {p0}, getWidth()I

    move-result v8

    .line 418
    .local v8, "w":I
    invoke-virtual {p0}, getHeight()I

    move-result v6

    .line 419
    .local v6, "h":I
    if-lez v8, :cond_21

    if-lez v6, :cond_21

    .line 420
    iget-object v0, p0, mLocation:[I

    invoke-virtual {p0, v0}, getLocationInWindow([I)V

    .line 422
    iget-object v0, p0, mLocation:[I

    const/4 v3, 0x0

    aget v1, v0, v3

    .line 423
    .local v1, "l":I
    iget-object v0, p0, mLocation:[I

    const/4 v3, 0x1

    aget v2, v0, v3

    .line 424
    .local v2, "t":I
    add-int v3, v1, v8

    add-int v4, v2, v6

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_21
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method handleGetNewSurface()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 775
    invoke-virtual {p0, v0, v0}, updateWindow(ZZ)V

    .line 776
    return-void
.end method

.method public isFixedSize()Z
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 786
    iget v0, p0, mRequestedWidth:I

    if-ne v0, v1, :cond_9

    iget v0, p0, mRequestedHeight:I

    if-eq v0, v1, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 296
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 297
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 298
    invoke-virtual {p0}, getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    iput-object v1, p0, mSession:Landroid/view/IWindowSession;

    .line 299
    iget-object v1, p0, mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 300
    iget-object v1, p0, mLayout:Landroid/view/WindowManager$LayoutParams;

    const-string v3, "SurfaceView"

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 301
    invoke-virtual {p0}, getVisibility()I

    move-result v1

    if-nez v1, :cond_3c

    move v1, v2

    :goto_25
    iput-boolean v1, p0, mViewVisibility:Z

    .line 303
    iget-boolean v1, p0, mGlobalListenersAdded:Z

    if-nez v1, :cond_3b

    .line 304
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 305
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 306
    iget-object v1, p0, mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 307
    iput-boolean v2, p0, mGlobalListenersAdded:Z

    .line 309
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_3b
    return-void

    .line 301
    :cond_3c
    const/4 v1, 0x0

    goto :goto_25
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 387
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 388
    iget v0, p0, mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_10

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, mNeedForceDrawAtSetFrame:Z

    .line 390
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, mCurrentOrientation:I

    .line 392
    :cond_10
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 339
    iget-boolean v1, p0, mGlobalListenersAdded:Z

    if-eqz v1, :cond_16

    .line 340
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 341
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 342
    iget-object v1, p0, mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 343
    iput-boolean v2, p0, mGlobalListenersAdded:Z

    .line 346
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_16
    iput-boolean v2, p0, mRequestedVisible:Z

    .line 347
    invoke-virtual {p0, v2, v2}, updateWindow(ZZ)V

    .line 348
    iput-boolean v2, p0, mHaveFrame:Z

    .line 349
    iget-object v1, p0, mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v1, :cond_2a

    .line 351
    :try_start_21
    iget-object v1, p0, mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_34

    .line 355
    :goto_28
    iput-object v3, p0, mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 357
    :cond_2a
    iput-object v3, p0, mSession:Landroid/view/IWindowSession;

    .line 358
    iget-object v1, p0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 360
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 361
    return-void

    .line 352
    :catch_34
    move-exception v1

    goto :goto_28
.end method

.method protected onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 365
    iget v2, p0, mRequestedWidth:I

    if-ltz v2, :cond_19

    iget v2, p0, mRequestedWidth:I

    invoke-static {v2, p1, v3}, resolveSizeAndState(III)I

    move-result v1

    .line 368
    .local v1, "width":I
    :goto_b
    iget v2, p0, mRequestedHeight:I

    if-ltz v2, :cond_1e

    iget v2, p0, mRequestedHeight:I

    invoke-static {v2, p2, v3}, resolveSizeAndState(III)I

    move-result v0

    .line 371
    .local v0, "height":I
    :goto_15
    invoke-virtual {p0, v1, v0}, setMeasuredDimension(II)V

    .line 372
    return-void

    .line 365
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_19
    invoke-static {v3, p1}, getDefaultSize(II)I

    move-result v1

    goto :goto_b

    .line 368
    .restart local v1    # "width":I
    :cond_1e
    invoke-static {v3, p2}, getDefaultSize(II)I

    move-result v0

    goto :goto_15
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 5
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 313
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 314
    if-nez p1, :cond_18

    move v0, v1

    :goto_8
    iput-boolean v0, p0, mWindowVisibility:Z

    .line 315
    iget-boolean v0, p0, mWindowVisibility:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, mViewVisibility:Z

    if-eqz v0, :cond_1a

    :goto_12
    iput-boolean v1, p0, mRequestedVisible:Z

    .line 316
    invoke-virtual {p0, v2, v2}, updateWindow(ZZ)V

    .line 317
    return-void

    :cond_18
    move v0, v2

    .line 314
    goto :goto_8

    :cond_1a
    move v1, v2

    .line 315
    goto :goto_12
.end method

.method public setBufferCount(I)V
    .registers 2
    .param p1, "count"    # I

    .prologue
    .line 501
    iput p1, p0, mSVBufferCount:I

    .line 502
    return-void
.end method

.method public setFixedOrientation(I)V
    .registers 6
    .param p1, "samsungFlagFixedOrientation"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1037
    if-eqz p1, :cond_5a

    .line 1038
    iget-object v2, p0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/2addr v3, p1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1039
    const/4 v2, 0x1

    iput-boolean v2, p0, mIsFixedOrientation:Z

    .line 1041
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerImpl;

    .line 1042
    .local v1, "wm":Landroid/view/WindowManagerImpl;
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 1043
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {v1}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1044
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3f

    .line 1045
    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-static {v2, v3}, Landroid/util/MathUtils;->max(II)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, mRequestedWidth:I

    .line 1046
    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-static {v2, v3}, Landroid/util/MathUtils;->min(II)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, mRequestedHeight:I

    .line 1060
    .end local v0    # "di":Landroid/view/DisplayInfo;
    .end local v1    # "wm":Landroid/view/WindowManagerImpl;
    :cond_3e
    :goto_3e
    return-void

    .line 1047
    .restart local v0    # "di":Landroid/view/DisplayInfo;
    .restart local v1    # "wm":Landroid/view/WindowManagerImpl;
    :cond_3f
    const/16 v2, 0x8

    if-ne p1, v2, :cond_3e

    .line 1048
    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-static {v2, v3}, Landroid/util/MathUtils;->min(II)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, mRequestedWidth:I

    .line 1049
    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-static {v2, v3}, Landroid/util/MathUtils;->max(II)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, mRequestedHeight:I

    goto :goto_3e

    .line 1052
    .end local v0    # "di":Landroid/view/DisplayInfo;
    .end local v1    # "wm":Landroid/view/WindowManagerImpl;
    :cond_5a
    iput v2, p0, mRequestedX:I

    .line 1053
    iput v2, p0, mRequestedY:I

    .line 1054
    iput v3, p0, mRequestedWidth:I

    .line 1055
    iput v3, p0, mRequestedHeight:I

    .line 1056
    iput-boolean v2, p0, mIsFixedOrientation:Z

    .line 1057
    iget-object v2, p0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v3, v3, -0xd

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto :goto_3e
.end method

.method public setFixedOrientation(IIIII)V
    .registers 14
    .param p1, "samsungFlagFixedOrientation"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v6, -0x1

    .line 1071
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-virtual/range {v0 .. v7}, setFixedOrientationWithScale(IIIIIII)V

    .line 1072
    return-void
.end method

.method public setFixedOrientationWithScale(IIIIIII)V
    .registers 10
    .param p1, "samsungFlagFixedOrientation"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "sourceWidth"    # I
    .param p5, "sourceHeight"    # I
    .param p6, "targetWidth"    # I
    .param p7, "targetHeight"    # I

    .prologue
    .line 1097
    iget-object v0, p0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1098
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsFixedOrientation:Z

    .line 1100
    iput p2, p0, mRequestedX:I

    .line 1101
    iput p3, p0, mRequestedY:I

    .line 1102
    iput p4, p0, mRequestedWidth:I

    .line 1103
    iput p5, p0, mRequestedHeight:I

    .line 1104
    iput p6, p0, mTargetWidth:I

    .line 1105
    iput p7, p0, mTargetHeight:I

    .line 1106
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v2, 0x0

    .line 377
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v1

    .line 378
    .local v1, "result":Z
    if-eqz v1, :cond_18

    invoke-virtual {p0}, isFixedSize()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-boolean v3, p0, mNeedForceDrawAtSetFrame:Z

    if-eqz v3, :cond_18

    const/4 v0, 0x1

    .line 379
    .local v0, "force":Z
    :goto_12
    iput-boolean v2, p0, mNeedForceDrawAtSetFrame:Z

    .line 380
    invoke-virtual {p0, v0, v2}, updateWindow(ZZ)V

    .line 381
    return v1

    .end local v0    # "force":Z
    :cond_18
    move v0, v2

    .line 378
    goto :goto_12
.end method

.method public setSecure(Z)V
    .registers 4
    .param p1, "isSecure"    # Z

    .prologue
    .line 518
    if-eqz p1, :cond_b

    .line 519
    iget-object v0, p0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 523
    :goto_a
    return-void

    .line 521
    :cond_b
    iget-object v0, p0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_a
.end method

.method public setVisibility(I)V
    .registers 6
    .param p1, "visibility"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 321
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    if-nez p1, :cond_20

    move v1, v2

    :goto_8
    iput-boolean v1, p0, mViewVisibility:Z

    .line 323
    iget-boolean v1, p0, mWindowVisibility:Z

    if-eqz v1, :cond_22

    iget-boolean v1, p0, mViewVisibility:Z

    if-eqz v1, :cond_22

    move v0, v2

    .line 324
    .local v0, "newRequestedVisible":Z
    :goto_13
    iget-boolean v1, p0, mRequestedVisible:Z

    if-eq v0, v1, :cond_1a

    .line 331
    invoke-virtual {p0}, requestLayout()V

    .line 333
    :cond_1a
    iput-boolean v0, p0, mRequestedVisible:Z

    .line 334
    invoke-virtual {p0, v3, v3}, updateWindow(ZZ)V

    .line 335
    return-void

    .end local v0    # "newRequestedVisible":Z
    :cond_20
    move v1, v3

    .line 322
    goto :goto_8

    :cond_22
    move v0, v3

    .line 323
    goto :goto_13
.end method

.method public setWindowType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 531
    iput p1, p0, mWindowType:I

    .line 532
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .registers 3
    .param p1, "isMediaOverlay"    # Z

    .prologue
    .line 469
    if-eqz p1, :cond_7

    const/16 v0, 0x3ec

    :goto_4
    iput v0, p0, mWindowType:I

    .line 472
    return-void

    .line 469
    :cond_7
    const/16 v0, 0x3e9

    goto :goto_4
.end method

.method public setZOrderOnTop(Z)V
    .registers 5
    .param p1, "onTop"    # Z

    .prologue
    .line 488
    if-eqz p1, :cond_10

    .line 489
    const/16 v0, 0x3e8

    iput v0, p0, mWindowType:I

    .line 491
    iget-object v0, p0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 496
    :goto_f
    return-void

    .line 493
    :cond_10
    const/16 v0, 0x3e9

    iput v0, p0, mWindowType:I

    .line 494
    iget-object v0, p0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_f
.end method

.method protected updateWindow(ZZ)V
    .registers 47
    .param p1, "force"    # Z
    .param p2, "redrawNeeded"    # Z

    .prologue
    .line 536
    move-object/from16 v0, p0

    iget-boolean v3, v0, mHaveFrame:Z

    if-nez v3, :cond_7

    .line 763
    :cond_6
    :goto_6
    return-void

    .line 539
    :cond_7
    invoke-virtual/range {p0 .. p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v41

    .line 540
    .local v41, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v41, :cond_15

    .line 541
    move-object/from16 v0, v41

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iput-object v3, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 544
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_26

    .line 545
    move-object/from16 v0, p0

    iget-object v3, v0, mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v4, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 548
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, mRequestedWidth:I

    move/from16 v33, v0

    .line 549
    .local v33, "myWidth":I
    if-gtz v33, :cond_32

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v33

    .line 550
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, mRequestedHeight:I

    move/from16 v32, v0

    .line 551
    .local v32, "myHeight":I
    if-gtz v32, :cond_3e

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v32

    .line 553
    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, mLocation:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getLocationInWindow([I)V

    .line 554
    move-object/from16 v0, p0

    iget-object v3, v0, mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v3, :cond_31b

    const/16 v26, 0x1

    .line 555
    .local v26, "creating":Z
    :goto_4f
    move-object/from16 v0, p0

    iget v3, v0, mFormat:I

    move-object/from16 v0, p0

    iget v4, v0, mRequestedFormat:I

    if-eq v3, v4, :cond_31f

    const/16 v28, 0x1

    .line 559
    .local v28, "formatChanged":Z
    :goto_5b
    move-object/from16 v0, p0

    iget v3, v0, mHeight:I

    move/from16 v0, v32

    if-le v3, v0, :cond_323

    invoke-virtual/range {p0 .. p0}, usingInputMethodInCascade()Z

    move-result v3

    if-eqz v3, :cond_323

    const/16 v23, 0x1

    .line 560
    .local v23, "blockSizeChange":Z
    :goto_6b
    move-object/from16 v0, p0

    iget v3, v0, mWidth:I

    move/from16 v0, v33

    if-ne v3, v0, :cond_7d

    move-object/from16 v0, p0

    iget v3, v0, mHeight:I

    move/from16 v0, v32

    if-eq v3, v0, :cond_327

    if-nez v23, :cond_327

    :cond_7d
    const/16 v37, 0x1

    .line 562
    .local v37, "sizeChanged":Z
    :goto_7f
    move-object/from16 v0, p0

    iget-boolean v3, v0, mVisible:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, mRequestedVisible:Z

    if-eq v3, v4, :cond_32b

    const/16 v43, 0x1

    .line 563
    .local v43, "visibleChanged":Z
    :goto_8b
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v3, v4, :cond_a3

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v3, v4, :cond_32f

    :cond_a3
    const/16 v30, 0x1

    .line 565
    .local v30, "layoutSizeChanged":Z
    :goto_a5
    if-nez p1, :cond_d9

    if-nez v26, :cond_d9

    if-nez v28, :cond_d9

    if-nez v37, :cond_d9

    if-nez v43, :cond_d9

    move-object/from16 v0, p0

    iget v3, v0, mLeft:I

    move-object/from16 v0, p0

    iget-object v4, v0, mLocation:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v3, v4, :cond_d9

    move-object/from16 v0, p0

    iget v3, v0, mTop:I

    move-object/from16 v0, p0

    iget-object v4, v0, mLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_d9

    move-object/from16 v0, p0

    iget-boolean v3, v0, mUpdateWindowNeeded:Z

    if-nez v3, :cond_d9

    move-object/from16 v0, p0

    iget-boolean v3, v0, mReportDrawNeeded:Z

    if-nez v3, :cond_d9

    if-nez p2, :cond_d9

    if-eqz v30, :cond_6

    .line 576
    :cond_d9
    :try_start_d9
    move-object/from16 v0, p0

    iget-boolean v0, v0, mRequestedVisible:Z

    move/from16 v42, v0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, mVisible:Z

    .line 577
    .local v42, "visible":Z
    move-object/from16 v0, p0

    iget-object v3, v0, mLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iput v3, v0, mLeft:I

    .line 578
    move-object/from16 v0, p0

    iget-object v3, v0, mLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iput v3, v0, mTop:I

    .line 579
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mWidth:I

    .line 580
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, mHeight:I

    .line 581
    move-object/from16 v0, p0

    iget v3, v0, mRequestedFormat:I

    move-object/from16 v0, p0

    iput v3, v0, mFormat:I

    .line 586
    move-object/from16 v0, p0

    iget-object v3, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, mLeft:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 587
    move-object/from16 v0, p0

    iget-object v3, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, mTop:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 589
    move-object/from16 v0, p0

    iget-boolean v3, v0, mIsFixedOrientation:Z

    if-eqz v3, :cond_348

    .line 590
    move-object/from16 v0, p0

    iget-object v3, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, mRequestedX:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 591
    move-object/from16 v0, p0

    iget-object v3, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, mRequestedY:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 593
    move-object/from16 v0, p0

    iget v3, v0, mTargetWidth:I

    if-lez v3, :cond_333

    move-object/from16 v0, p0

    iget v3, v0, mTargetHeight:I

    if-lez v3, :cond_333

    .line 594
    move-object/from16 v0, p0

    iget-object v3, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, mTargetWidth:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, mTargetHeight:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 605
    :goto_15d
    move-object/from16 v0, p0

    iget-object v3, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_16e

    .line 606
    move-object/from16 v0, p0

    iget-object v3, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v4, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/content/res/CompatibilityInfo$Translator;->translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V

    .line 609
    :cond_16e
    move-object/from16 v0, p0

    iget-object v3, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, mRequestedFormat:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x4218

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 617
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v3

    if-nez v3, :cond_19e

    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 621
    :cond_19e
    move-object/from16 v0, p0

    iget-object v3, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 623
    move-object/from16 v0, p0

    iget-object v3, v0, mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v3, :cond_1f8

    .line 624
    invoke-virtual/range {p0 .. p0}, getDisplay()Landroid/view/Display;

    move-result-object v27

    .line 625
    .local v27, "display":Landroid/view/Display;
    new-instance v3, Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/view/SurfaceView$MyWindow;-><init>(Landroid/view/SurfaceView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, mWindowType:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 627
    move-object/from16 v0, p0

    iget-object v3, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    const v4, 0x800033

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 628
    move-object/from16 v0, p0

    iget-object v3, v0, mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    iget-object v5, v0, mWindow:Landroid/view/SurfaceView$MyWindow;

    iget v5, v5, Landroid/view/SurfaceView$MyWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v6, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-boolean v7, v0, mVisible:Z

    if-eqz v7, :cond_35e

    const/4 v7, 0x0

    :goto_1e9
    invoke-virtual/range {v27 .. v27}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, mStableInsets:Landroid/graphics/Rect;

    invoke-interface/range {v3 .. v10}, Landroid/view/IWindowSession;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 638
    .end local v27    # "display":Landroid/view/Display;
    :cond_1f8
    move-object/from16 v0, p0

    iget-object v3, v0, mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1ff
    .catch Landroid/os/RemoteException; {:try_start_d9 .. :try_end_1ff} :catch_345

    .line 640
    const/4 v3, 0x0

    :try_start_200
    move-object/from16 v0, p0

    iput-boolean v3, v0, mUpdateWindowNeeded:Z

    .line 641
    move-object/from16 v0, p0

    iget-boolean v0, v0, mReportDrawNeeded:Z

    move/from16 v36, v0

    .line 642
    .local v36, "reportDrawNeeded":Z
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, mReportDrawNeeded:Z

    .line 643
    if-nez v42, :cond_362

    const/4 v3, 0x1

    :goto_212
    move-object/from16 v0, p0

    iput-boolean v3, v0, mDrawingStopped:Z

    .line 647
    move-object/from16 v0, p0

    iget-object v3, v0, mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    iget-object v5, v0, mWindow:Landroid/view/SurfaceView$MyWindow;

    iget v5, v5, Landroid/view/SurfaceView$MyWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v6, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v7, v0, mWidth:I

    move-object/from16 v0, p0

    iget v8, v0, mHeight:I

    if-eqz v42, :cond_365

    const/4 v9, 0x0

    :goto_233
    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, mOutsets:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mNewSurface:Landroid/view/Surface;

    move-object/from16 v18, v0

    new-instance v19, Landroid/graphics/PointF;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/PointF;-><init>()V

    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    invoke-interface/range {v3 .. v20}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;Landroid/graphics/PointF;Landroid/graphics/Rect;)I

    move-result v35

    .line 655
    .local v35, "relayoutResult":I
    and-int/lit8 v3, v35, 0x2

    if-eqz v3, :cond_26e

    .line 656
    const/16 v36, 0x1

    .line 662
    :cond_26e
    move-object/from16 v0, p0

    iget-object v3, v0, mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 663
    move-object/from16 v0, p0

    iget-object v3, v0, mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 664
    move-object/from16 v0, p0

    iget-object v3, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v3, :cond_369

    .line 665
    move-object/from16 v0, p0

    iget-object v3, v0, mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 666
    move-object/from16 v0, p0

    iget-object v3, v0, mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 673
    :goto_29e
    move-object/from16 v0, p0

    iget-object v3, v0, mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v40, v0

    .line 674
    .local v40, "surfaceWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v39, v0

    .line 675
    .local v39, "surfaceHeight":I
    move-object/from16 v0, p0

    iget v3, v0, mLastSurfaceWidth:I

    move/from16 v0, v40

    if-ne v3, v0, :cond_2be

    move-object/from16 v0, p0

    iget v3, v0, mLastSurfaceHeight:I

    move/from16 v0, v39

    if-eq v3, v0, :cond_3a6

    :cond_2be
    const/16 v34, 0x1

    .line 677
    .local v34, "realSizeChanged":Z
    :goto_2c0
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, mLastSurfaceWidth:I

    .line 678
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, mLastSurfaceHeight:I
    :try_end_2cc
    .catchall {:try_start_200 .. :try_end_2cc} :catchall_39d

    .line 680
    :try_start_2cc
    move-object/from16 v0, p0

    iget-object v3, v0, mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2d3
    .catch Landroid/os/RemoteException; {:try_start_2cc .. :try_end_2d3} :catch_345

    .line 684
    or-int v3, v26, v36

    or-int p2, p2, v3

    .line 686
    const/16 v25, 0x0

    .line 688
    .local v25, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    and-int/lit8 v3, v35, 0x4

    if-eqz v3, :cond_3aa

    const/16 v38, 0x1

    .line 690
    .local v38, "surfaceChanged":Z
    :goto_2df
    :try_start_2df
    move-object/from16 v0, p0

    iget-boolean v3, v0, mSurfaceCreated:Z

    if-eqz v3, :cond_3ae

    if-nez v38, :cond_2eb

    if-nez v42, :cond_3ae

    if-eqz v43, :cond_3ae

    .line 691
    :cond_2eb
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, mSurfaceCreated:Z

    .line 692
    move-object/from16 v0, p0

    iget-object v3, v0, mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3ae

    .line 694
    invoke-direct/range {p0 .. p0}, getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v25

    .line 695
    move-object/from16 v22, v25

    .local v22, "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v31, v0

    .local v31, "len$":I
    const/16 v29, 0x0

    .local v29, "i$":I
    :goto_307
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_3ae

    aget-object v24, v22, v29

    .line 696
    .local v24, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v3, v0, mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    :try_end_318
    .catchall {:try_start_2df .. :try_end_318} :catchall_454

    .line 695
    add-int/lit8 v29, v29, 0x1

    goto :goto_307

    .line 554
    .end local v22    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v23    # "blockSizeChange":Z
    .end local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v26    # "creating":Z
    .end local v28    # "formatChanged":Z
    .end local v29    # "i$":I
    .end local v30    # "layoutSizeChanged":Z
    .end local v31    # "len$":I
    .end local v34    # "realSizeChanged":Z
    .end local v35    # "relayoutResult":I
    .end local v36    # "reportDrawNeeded":Z
    .end local v37    # "sizeChanged":Z
    .end local v38    # "surfaceChanged":Z
    .end local v39    # "surfaceHeight":I
    .end local v40    # "surfaceWidth":I
    .end local v42    # "visible":Z
    .end local v43    # "visibleChanged":Z
    :cond_31b
    const/16 v26, 0x0

    goto/16 :goto_4f

    .line 555
    .restart local v26    # "creating":Z
    :cond_31f
    const/16 v28, 0x0

    goto/16 :goto_5b

    .line 559
    .restart local v28    # "formatChanged":Z
    :cond_323
    const/16 v23, 0x0

    goto/16 :goto_6b

    .line 560
    .restart local v23    # "blockSizeChange":Z
    :cond_327
    const/16 v37, 0x0

    goto/16 :goto_7f

    .line 562
    .restart local v37    # "sizeChanged":Z
    :cond_32b
    const/16 v43, 0x0

    goto/16 :goto_8b

    .line 563
    .restart local v43    # "visibleChanged":Z
    :cond_32f
    const/16 v30, 0x0

    goto/16 :goto_a5

    .line 597
    .restart local v30    # "layoutSizeChanged":Z
    .restart local v42    # "visible":Z
    :cond_333
    :try_start_333
    move-object/from16 v0, p0

    iget-object v3, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v33

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v32

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_15d

    .line 756
    .end local v42    # "visible":Z
    :catch_345
    move-exception v3

    goto/16 :goto_6

    .line 601
    .restart local v42    # "visible":Z
    :cond_348
    move-object/from16 v0, p0

    iget-object v3, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I
    :try_end_35c
    .catch Landroid/os/RemoteException; {:try_start_333 .. :try_end_35c} :catch_345

    goto/16 :goto_15d

    .line 628
    .restart local v27    # "display":Landroid/view/Display;
    :cond_35e
    const/16 v7, 0x8

    goto/16 :goto_1e9

    .line 643
    .end local v27    # "display":Landroid/view/Display;
    .restart local v36    # "reportDrawNeeded":Z
    :cond_362
    const/4 v3, 0x0

    goto/16 :goto_212

    .line 647
    :cond_365
    const/16 v9, 0x8

    goto/16 :goto_233

    .line 668
    .restart local v35    # "relayoutResult":I
    :cond_369
    :try_start_369
    move-object/from16 v0, p0

    iget-object v3, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v0, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    move/from16 v21, v0

    .line 669
    .local v21, "appInvertedScale":F
    move-object/from16 v0, p0

    iget-object v3, v0, mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v21

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v21

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I
    :try_end_39b
    .catchall {:try_start_369 .. :try_end_39b} :catchall_39d

    goto/16 :goto_29e

    .line 680
    .end local v21    # "appInvertedScale":F
    .end local v35    # "relayoutResult":I
    .end local v36    # "reportDrawNeeded":Z
    :catchall_39d
    move-exception v3

    :try_start_39e
    move-object/from16 v0, p0

    iget-object v4, v0, mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
    :try_end_3a6
    .catch Landroid/os/RemoteException; {:try_start_39e .. :try_end_3a6} :catch_345

    .line 675
    .restart local v35    # "relayoutResult":I
    .restart local v36    # "reportDrawNeeded":Z
    .restart local v39    # "surfaceHeight":I
    .restart local v40    # "surfaceWidth":I
    :cond_3a6
    const/16 v34, 0x0

    goto/16 :goto_2c0

    .line 688
    .restart local v25    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v34    # "realSizeChanged":Z
    :cond_3aa
    const/16 v38, 0x0

    goto/16 :goto_2df

    .line 701
    .restart local v38    # "surfaceChanged":Z
    :cond_3ae
    :try_start_3ae
    move-object/from16 v0, p0

    iget-object v3, v0, mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v4, v0, mNewSurface:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    .line 703
    if-eqz v42, :cond_4a0

    move-object/from16 v0, p0

    iget-object v3, v0, mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_4a0

    .line 704
    move-object/from16 v0, p0

    iget-boolean v3, v0, mSurfaceCreated:Z

    if-nez v3, :cond_40c

    if-nez v38, :cond_3cf

    if-eqz v43, :cond_40c

    .line 705
    :cond_3cf
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, mSurfaceCreated:Z

    .line 706
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, mIsCreating:Z

    .line 708
    if-nez v25, :cond_3df

    .line 709
    invoke-direct/range {p0 .. p0}, getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v25

    .line 711
    :cond_3df
    move-object/from16 v22, v25

    .restart local v22    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v31, v0

    .restart local v31    # "len$":I
    const/16 v29, 0x0

    .restart local v29    # "i$":I
    :goto_3e8
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_3fc

    aget-object v24, v22, v29

    .line 712
    .restart local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v3, v0, mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 711
    add-int/lit8 v29, v29, 0x1

    goto :goto_3e8

    .line 715
    .end local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_3fc
    if-eqz v41, :cond_40c

    .line 717
    sget v3, Landroid/view/ViewRootImpl;->sSVBufferCount:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_441

    .line 718
    move-object/from16 v0, p0

    iget-object v3, v0, mSurface:Landroid/view/Surface;

    sget v4, Landroid/view/ViewRootImpl;->sSVBufferCount:I

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setBufferCount(I)V

    .line 724
    .end local v22    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v29    # "i$":I
    .end local v31    # "len$":I
    :cond_40c
    :goto_40c
    if-nez v26, :cond_416

    if-nez v28, :cond_416

    if-nez v37, :cond_416

    if-nez v43, :cond_416

    if-eqz v34, :cond_473

    .line 728
    :cond_416
    if-nez v25, :cond_41c

    .line 729
    invoke-direct/range {p0 .. p0}, getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v25

    .line 731
    :cond_41c
    move-object/from16 v22, v25

    .restart local v22    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v31, v0

    .restart local v31    # "len$":I
    const/16 v29, 0x0

    .restart local v29    # "i$":I
    :goto_425
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_473

    aget-object v24, v22, v29

    .line 732
    .restart local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v3, v0, mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, p0

    iget v4, v0, mFormat:I

    move-object/from16 v0, v24

    move/from16 v1, v33

    move/from16 v2, v32

    invoke-interface {v0, v3, v4, v1, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 731
    add-int/lit8 v29, v29, 0x1

    goto :goto_425

    .line 719
    .end local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_441
    move-object/from16 v0, p0

    iget v3, v0, mSVBufferCount:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_40c

    .line 720
    move-object/from16 v0, p0

    iget-object v3, v0, mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget v4, v0, mSVBufferCount:I

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setBufferCount(I)V
    :try_end_453
    .catchall {:try_start_3ae .. :try_end_453} :catchall_454

    goto :goto_40c

    .line 749
    .end local v22    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v29    # "i$":I
    .end local v31    # "len$":I
    :catchall_454
    move-exception v3

    const/4 v4, 0x0

    :try_start_456
    move-object/from16 v0, p0

    iput-boolean v4, v0, mIsCreating:Z

    .line 750
    if-eqz p2, :cond_467

    .line 752
    move-object/from16 v0, p0

    iget-object v4, v0, mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 754
    :cond_467
    move-object/from16 v0, p0

    iget-object v4, v0, mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V

    throw v3
    :try_end_473
    .catch Landroid/os/RemoteException; {:try_start_456 .. :try_end_473} :catch_345

    .line 735
    :cond_473
    if-eqz p2, :cond_4a0

    .line 737
    if-nez v25, :cond_47b

    .line 738
    :try_start_477
    invoke-direct/range {p0 .. p0}, getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v25

    .line 740
    :cond_47b
    move-object/from16 v22, v25

    .restart local v22    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v31, v0

    .restart local v31    # "len$":I
    const/16 v29, 0x0

    .restart local v29    # "i$":I
    :goto_484
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_4a0

    aget-object v24, v22, v29

    .line 741
    .restart local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v24

    instance-of v3, v0, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v3, :cond_49d

    .line 742
    check-cast v24, Landroid/view/SurfaceHolder$Callback2;

    .end local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v3, v0, mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    :try_end_49d
    .catchall {:try_start_477 .. :try_end_49d} :catchall_454

    .line 740
    :cond_49d
    add-int/lit8 v29, v29, 0x1

    goto :goto_484

    .line 749
    .end local v22    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v29    # "i$":I
    .end local v31    # "len$":I
    :cond_4a0
    const/4 v3, 0x0

    :try_start_4a1
    move-object/from16 v0, p0

    iput-boolean v3, v0, mIsCreating:Z

    .line 750
    if-eqz p2, :cond_4b2

    .line 752
    move-object/from16 v0, p0

    iget-object v3, v0, mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 754
    :cond_4b2
    move-object/from16 v0, p0

    iget-object v3, v0, mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V
    :try_end_4bd
    .catch Landroid/os/RemoteException; {:try_start_4a1 .. :try_end_4bd} :catch_345

    goto/16 :goto_6
.end method
