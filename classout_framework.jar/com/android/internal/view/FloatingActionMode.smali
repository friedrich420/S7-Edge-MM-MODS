.class public Lcom/android/internal/view/FloatingActionMode;
.super Landroid/view/ActionMode;
.source "FloatingActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;
    }
.end annotation


# static fields
.field private static final MAX_HIDE_DURATION:I = 0xbb8

.field private static final MOVING_HIDE_DELAY:I = 0x190

.field private static final MOVING_HIDE_DELAY_IMMEDIATLY:I = 0x64


# instance fields
.field private final mBottomAllowance:I

.field private final mCallback:Landroid/view/ActionMode$Callback2;

.field private final mContentRect:Landroid/graphics/Rect;

.field private final mContentRectOnScreen:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

.field private final mHideOff:Ljava/lang/Runnable;

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private final mMovingOff:Ljava/lang/Runnable;

.field private final mMovingOn:Ljava/lang/Runnable;

.field private mOrientation:I

.field private final mOriginatingView:Landroid/view/View;

.field private mPrevOrientation:I

.field private final mPreviousContentRectOnScreen:Landroid/graphics/Rect;

.field private final mPreviousViewPositionOnScreen:[I

.field private final mPreviousViewRectOnScreen:Landroid/graphics/Rect;

.field private final mRootViewPositionOnScreen:[I

.field private final mScreenRect:Landroid/graphics/Rect;

.field private final mViewPositionOnScreen:[I

.field private final mViewRectOnScreen:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "originatingView"    # Landroid/view/View;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Z)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "originatingView"    # Landroid/view/View;
    .param p4, "useSamsungToolbar"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 91
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 62
    new-instance v0, Lcom/android/internal/view/FloatingActionMode$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/FloatingActionMode$1;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v0, p0, mMovingOff:Ljava/lang/Runnable;

    .line 69
    new-instance v0, Lcom/android/internal/view/FloatingActionMode$2;

    invoke-direct {v0, p0}, Lcom/android/internal/view/FloatingActionMode$2;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v0, p0, mHideOff:Ljava/lang/Runnable;

    .line 76
    new-instance v0, Lcom/android/internal/view/FloatingActionMode$3;

    invoke-direct {v0, p0}, Lcom/android/internal/view/FloatingActionMode$3;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v0, p0, mMovingOn:Ljava/lang/Runnable;

    .line 92
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 93
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ActionMode$Callback2;

    iput-object v0, p0, mCallback:Landroid/view/ActionMode$Callback2;

    .line 94
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 97
    if-eqz p4, :cond_ab

    .line 98
    const/16 v0, 0x63

    invoke-virtual {p0, v0}, setType(I)V

    .line 102
    :goto_3c
    iget-object v0, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v1, Lcom/android/internal/view/FloatingActionMode$4;

    invoke-direct {v1, p0}, Lcom/android/internal/view/FloatingActionMode$4;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mContentRect:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mContentRectOnScreen:Landroid/graphics/Rect;

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    .line 114
    new-array v0, v2, [I

    iput-object v0, p0, mViewPositionOnScreen:[I

    .line 115
    new-array v0, v2, [I

    iput-object v0, p0, mPreviousViewPositionOnScreen:[I

    .line 116
    new-array v0, v2, [I

    iput-object v0, p0, mRootViewPositionOnScreen:[I

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mViewRectOnScreen:Landroid/graphics/Rect;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mScreenRect:Landroid/graphics/Rect;

    .line 120
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, mOriginatingView:Landroid/view/View;

    .line 121
    iget-object v0, p0, mOriginatingView:Landroid/view/View;

    iget-object v1, p0, mViewPositionOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mBottomAllowance:I

    .line 126
    iget-object v0, p0, mOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, mOrientation:I

    .line 127
    iget v0, p0, mOrientation:I

    iput v0, p0, mPrevOrientation:I

    .line 128
    return-void

    .line 100
    :cond_ab
    invoke-virtual {p0, v1}, setType(I)V

    goto :goto_3c
.end method

.method static synthetic access$000(Lcom/android/internal/view/FloatingActionMode;)Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/view/FloatingActionMode;

    .prologue
    .line 38
    iget-object v0, p0, mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/view/FloatingActionMode;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/view/FloatingActionMode;

    .prologue
    .line 38
    invoke-direct {p0}, repositionToolbar()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/view/FloatingActionMode;)Landroid/view/ActionMode$Callback2;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/view/FloatingActionMode;

    .prologue
    .line 38
    iget-object v0, p0, mCallback:Landroid/view/ActionMode$Callback2;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/view/FloatingActionMode;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/view/FloatingActionMode;

    .prologue
    .line 38
    iget-object v0, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private checkToolbarInitialized()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 343
    iget-object v0, p0, mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    if-eqz v0, :cond_12

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 344
    iget-object v0, p0, mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    if-eqz v0, :cond_14

    :goto_e
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 345
    return-void

    :cond_12
    move v0, v2

    .line 343
    goto :goto_7

    :cond_14
    move v1, v2

    .line 344
    goto :goto_e
.end method

.method private static intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 4
    .param p0, "a"    # Landroid/graphics/Rect;
    .param p1, "b"    # Landroid/graphics/Rect;

    .prologue
    .line 278
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_1a

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_1a

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_1a

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private isContentRectWithinBounds()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 264
    iget-object v1, p0, mScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 270
    iget-object v1, p0, mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, mScreenRect:Landroid/graphics/Rect;

    invoke-static {v1, v2}, intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, mViewRectOnScreen:Landroid/graphics/Rect;

    invoke-static {v1, v2}, intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v0, 0x1

    :cond_33
    return v0
.end method

.method private repositionToolbar()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 218
    invoke-direct {p0}, checkToolbarInitialized()V

    .line 220
    iget-object v1, p0, mOriginatingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, mOrientation:I

    .line 222
    iget-object v1, p0, mCallback:Landroid/view/ActionMode$Callback2;

    iget-object v2, p0, mOriginatingView:Landroid/view/View;

    iget-object v3, p0, mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 224
    iget-object v1, p0, mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 225
    iget-object v1, p0, mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, mViewPositionOnScreen:[I

    aget v2, v2, v4

    iget-object v3, p0, mViewPositionOnScreen:[I

    aget v3, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 227
    invoke-direct {p0}, isContentRectWithinBounds()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 228
    iget-object v1, p0, mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v1, v4}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setOutOfBounds(Z)V

    .line 230
    iget-object v1, p0, mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, mContentRectOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, mViewRectOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, mContentRectOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, mViewRectOnScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, mContentRectOnScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, mViewRectOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, mContentRectOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, mViewRectOnScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, mBottomAllowance:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 237
    iget-object v1, p0, mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    iget v1, p0, mOrientation:I

    iget v2, p0, mPrevOrientation:I

    if-eq v1, v2, :cond_ae

    .line 239
    :cond_83
    iget-object v1, p0, mOriginatingView:Landroid/view/View;

    iget-object v2, p0, mMovingOff:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 240
    iget-object v1, p0, mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v1, v8}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setMoving(Z)V

    .line 242
    iget-object v1, p0, mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    .line 243
    invoke-virtual {p0}, getMovingOffDelay()I

    move-result v0

    .line 244
    .local v0, "delay":I
    if-ltz v0, :cond_bf

    .line 245
    iget-object v1, p0, mOriginatingView:Landroid/view/View;

    iget-object v2, p0, mMovingOff:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    :goto_a2
    iget-object v1, p0, mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    iget-object v2, p0, mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar;->setContentRect(Landroid/graphics/Rect;)Lcom/android/internal/widget/FloatingToolbar;

    .line 251
    iget-object v1, p0, mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar;->updateLayout()Lcom/android/internal/widget/FloatingToolbar;

    .line 257
    .end local v0    # "delay":I
    :cond_ae
    :goto_ae
    iget-object v1, p0, mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    .line 259
    iget-object v1, p0, mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 260
    iget v1, p0, mOrientation:I

    iput v1, p0, mPrevOrientation:I

    .line 261
    return-void

    .line 247
    .restart local v0    # "delay":I
    :cond_bf
    iget-object v1, p0, mOriginatingView:Landroid/view/View;

    iget-object v2, p0, mMovingOff:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a2

    .line 254
    .end local v0    # "delay":I
    :cond_c9
    iget-object v1, p0, mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v1, v8}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setOutOfBounds(Z)V

    .line 255
    iget-object v1, p0, mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_ae
.end method

.method private reset()V
    .registers 3

    .prologue
    .line 348
    iget-object v0, p0, mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 349
    iget-object v0, p0, mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->deactivate()V

    .line 350
    iget-object v0, p0, mOriginatingView:Landroid/view/View;

    iget-object v1, p0, mMovingOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 351
    iget-object v0, p0, mOriginatingView:Landroid/view/View;

    iget-object v1, p0, mHideOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 352
    iget-object v0, p0, mOriginatingView:Landroid/view/View;

    iget-object v1, p0, mMovingOn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 353
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 309
    invoke-direct {p0}, checkToolbarInitialized()V

    .line 310
    invoke-direct {p0}, reset()V

    .line 311
    iget-object v0, p0, mCallback:Landroid/view/ActionMode$Callback2;

    invoke-virtual {v0, p0}, Landroid/view/ActionMode$Callback2;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 312
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .prologue
    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .prologue
    .line 336
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 321
    const/4 v0, 0x0

    return-object v0
.end method

.method public hide(J)V
    .registers 6
    .param p1, "duration"    # J

    .prologue
    .line 284
    invoke-direct {p0}, checkToolbarInitialized()V

    .line 286
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 287
    invoke-static {}, Landroid/view/ViewConfiguration;->getDefaultActionModeHideDuration()J

    move-result-wide p1

    .line 289
    :cond_d
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 290
    iget-object v0, p0, mOriginatingView:Landroid/view/View;

    iget-object v1, p0, mHideOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 291
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_26

    .line 292
    iget-object v0, p0, mHideOff:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 298
    :goto_25
    return-void

    .line 294
    :cond_26
    iget-object v0, p0, mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setHideRequested(Z)V

    .line 295
    iget-object v0, p0, mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    .line 296
    iget-object v0, p0, mOriginatingView:Landroid/view/View;

    iget-object v1, p0, mHideOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_25
.end method

.method public invalidate()V
    .registers 3

    .prologue
    .line 160
    invoke-direct {p0}, checkToolbarInitialized()V

    .line 161
    iget-object v0, p0, mCallback:Landroid/view/ActionMode$Callback2;

    iget-object v1, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0, v1}, Landroid/view/ActionMode$Callback2;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 162
    invoke-virtual {p0}, invalidateContentRect()V

    .line 163
    return-void
.end method

.method public invalidateContentRect()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 167
    invoke-direct {p0}, checkToolbarInitialized()V

    .line 168
    iget-object v0, p0, mCallback:Landroid/view/ActionMode$Callback2;

    iget-object v1, p0, mOriginatingView:Landroid/view/View;

    iget-object v2, p0, mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 169
    iget-object v0, p0, mOriginatingView:Landroid/view/View;

    iget-object v1, p0, mViewPositionOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 170
    iget-object v0, p0, mOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, mRootViewPositionOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 171
    iget-object v0, p0, mOriginatingView:Landroid/view/View;

    iget-object v1, p0, mViewRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 172
    iget-object v0, p0, mViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, mRootViewPositionOnScreen:[I

    aget v1, v1, v3

    iget-object v2, p0, mRootViewPositionOnScreen:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 174
    invoke-direct {p0}, repositionToolbar()V

    .line 176
    iget-object v0, p0, mPreviousViewPositionOnScreen:[I

    iget-object v1, p0, mViewPositionOnScreen:[I

    aget v1, v1, v3

    aput v1, v0, v3

    .line 177
    iget-object v0, p0, mPreviousViewPositionOnScreen:[I

    iget-object v1, p0, mViewPositionOnScreen:[I

    aget v1, v1, v4

    aput v1, v0, v4

    .line 178
    iget-object v0, p0, mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, mViewRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 180
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 302
    invoke-direct {p0}, checkToolbarInitialized()V

    .line 303
    iget-object v0, p0, mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setWindowFocused(Z)V

    .line 304
    iget-object v0, p0, mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    .line 305
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 156
    return-void
.end method

.method public setFloatingToolbar(Lcom/android/internal/widget/FloatingToolbar;)V
    .registers 4
    .param p1, "floatingToolbar"    # Lcom/android/internal/widget/FloatingToolbar;

    .prologue
    .line 131
    iget-object v0, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/FloatingToolbar;->setMenu(Landroid/view/Menu;)Lcom/android/internal/widget/FloatingToolbar;

    move-result-object v0

    new-instance v1, Lcom/android/internal/view/FloatingActionMode$5;

    invoke-direct {v1, p0}, Lcom/android/internal/view/FloatingActionMode$5;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/FloatingToolbar;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/android/internal/widget/FloatingToolbar;

    move-result-object v0

    iput-object v0, p0, mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 139
    new-instance v0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    iget-object v1, p0, mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-direct {v0, v1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;-><init>(Lcom/android/internal/widget/FloatingToolbar;)V

    iput-object v0, p0, mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    .line 140
    iget-object v0, p0, mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->activate()V

    .line 141
    return-void
.end method

.method public setSubtitle(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 153
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 150
    return-void
.end method

.method public setTitle(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 147
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 144
    return-void
.end method

.method public updateViewLocationInWindow()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 183
    invoke-direct {p0}, checkToolbarInitialized()V

    .line 185
    iget-object v0, p0, mOriginatingView:Landroid/view/View;

    iget-object v1, p0, mViewPositionOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 186
    iget-object v0, p0, mOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, mRootViewPositionOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 187
    iget-object v0, p0, mOriginatingView:Landroid/view/View;

    iget-object v1, p0, mViewRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 188
    iget-object v0, p0, mViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, mRootViewPositionOnScreen:[I

    aget v1, v1, v5

    iget-object v2, p0, mRootViewPositionOnScreen:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 190
    iget-object v0, p0, mViewPositionOnScreen:[I

    iget-object v1, p0, mPreviousViewPositionOnScreen:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, mViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 193
    :cond_3f
    iget-object v0, p0, mOriginatingView:Landroid/view/View;

    iget-object v1, p0, mMovingOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 194
    iget-object v0, p0, mCallback:Landroid/view/ActionMode$Callback2;

    iget-object v1, p0, mOriginatingView:Landroid/view/View;

    iget-object v2, p0, mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 196
    iget-object v0, p0, mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 197
    iget-object v0, p0, mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, mViewPositionOnScreen:[I

    aget v1, v1, v5

    iget-object v2, p0, mViewPositionOnScreen:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 199
    invoke-direct {p0}, isContentRectWithinBounds()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 200
    iget-object v0, p0, mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0, v4}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setMoving(Z)V

    .line 201
    iget-object v0, p0, mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    .line 202
    iget-object v0, p0, mOriginatingView:Landroid/view/View;

    iget-object v1, p0, mMovingOn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 203
    iget-object v0, p0, mOriginatingView:Landroid/view/View;

    iget-object v1, p0, mMovingOn:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    :goto_83
    iget-object v0, p0, mPreviousViewPositionOnScreen:[I

    iget-object v1, p0, mViewPositionOnScreen:[I

    aget v1, v1, v5

    aput v1, v0, v5

    .line 211
    iget-object v0, p0, mPreviousViewPositionOnScreen:[I

    iget-object v1, p0, mViewPositionOnScreen:[I

    aget v1, v1, v4

    aput v1, v0, v4

    .line 212
    iget-object v0, p0, mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, mViewRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 214
    :cond_9a
    return-void

    .line 205
    :cond_9b
    iget-object v0, p0, mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0, v4}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setMoving(Z)V

    .line 206
    iget-object v0, p0, mOriginatingView:Landroid/view/View;

    iget-object v1, p0, mMovingOff:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    invoke-direct {p0}, repositionToolbar()V

    goto :goto_83
.end method
