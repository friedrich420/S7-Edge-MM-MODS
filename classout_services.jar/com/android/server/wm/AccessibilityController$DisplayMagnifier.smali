.class final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayMagnifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;,
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
    }
.end annotation


# static fields
.field private static final DEBUG_LAYERS:Z = false

.field private static final DEBUG_RECTANGLE_REQUESTED:Z = false

.field private static final DEBUG_ROTATION:Z = false

.field private static final DEBUG_VIEWPORT_WINDOW:Z = false

.field private static final DEBUG_WINDOW_TRANSITIONS:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DisplayMagnifier"


# instance fields
.field private final mCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;

.field private final mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLongAnimationDuration:J

.field private final mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mTempRegion1:Landroid/graphics/Region;

.field private final mTempRegion2:Landroid/graphics/Region;

.field private final mTempRegion3:Landroid/graphics/Region;

.field private final mTempRegion4:Landroid/graphics/Region;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$MagnificationCallbacks;I)V
    .registers 6
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "callbacks"    # Landroid/view/WindowManagerInternal$MagnificationCallbacks;
    .param p3, "displayId"    # I

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTempRect1:Landroid/graphics/Rect;

    .line 266
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTempRect2:Landroid/graphics/Rect;

    .line 268
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, mTempRegion1:Landroid/graphics/Region;

    .line 269
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, mTempRegion2:Landroid/graphics/Region;

    .line 270
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, mTempRegion3:Landroid/graphics/Region;

    .line 271
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, mTempRegion4:Landroid/graphics/Region;

    .line 287
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 288
    iput-object p1, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 289
    iput-object p2, p0, mCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    .line 290
    new-instance v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    iget-object v1, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 292
    new-instance v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-direct {v0, p0, p3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;I)V

    iput-object v0, p0, mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 293
    iput p3, p0, mDisplayId:I

    .line 295
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, mLongAnimationDuration:J

    .line 297
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 255
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 255
    iget-object v0, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/WindowManagerInternal$MagnificationCallbacks;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 255
    iget-object v0, p0, mCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 255
    iget-object v0, p0, mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 255
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 255
    iget-object v0, p0, mTempRegion1:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 255
    iget-object v0, p0, mTempRegion4:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 255
    iget-object v0, p0, mTempRegion2:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 255
    iget-object v0, p0, mTempRegion3:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 255
    iget-object v0, p0, mTempRect1:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .prologue
    .line 255
    iget-wide v0, p0, mLongAnimationDuration:J

    return-wide v0
.end method


# virtual methods
.method public destroyLocked()V
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->destroyWindow()V

    .line 439
    return-void
.end method

.method public drawMagnifiedRegionBorderIfNeededLocked()V
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->drawWindowIfNeededLocked()V

    .line 444
    return-void
.end method

.method public getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;
    .registers 7
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v3, 0x0

    .line 422
    iget-object v4, p0, mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getMagnificationSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v1

    .line 423
    .local v1, "spec":Landroid/view/MagnificationSpec;
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v4

    if-nez v4, :cond_28

    .line 424
    iget-object v4, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 425
    .local v0, "policy":Landroid/view/WindowManagerPolicy;
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 426
    .local v2, "windowType":I
    invoke-interface {v0, v2}, Landroid/view/WindowManagerPolicy;->isTopLevelWindow(I)Z

    move-result v4

    if-nez v4, :cond_29

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_29

    invoke-interface {v0, v2}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v4

    if-nez v4, :cond_29

    move-object v1, v3

    .line 434
    .end local v0    # "policy":Landroid/view/WindowManagerPolicy;
    .end local v1    # "spec":Landroid/view/MagnificationSpec;
    .end local v2    # "windowType":I
    :cond_28
    :goto_28
    return-object v1

    .line 430
    .restart local v0    # "policy":Landroid/view/WindowManagerPolicy;
    .restart local v1    # "spec":Landroid/view/MagnificationSpec;
    .restart local v2    # "windowType":I
    :cond_29
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v0, v4}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v4

    if-nez v4, :cond_28

    move-object v1, v3

    .line 431
    goto :goto_28
.end method

.method public isMagnifyingLocked()Z
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v0

    return v0
.end method

.method public onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .registers 6
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "transition"    # I

    .prologue
    .line 355
    iget-object v1, p0, mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v0

    .line 356
    .local v0, "magnifying":Z
    if-eqz v0, :cond_b

    .line 357
    packed-switch p2, :pswitch_data_14

    .line 368
    :cond_b
    :goto_b
    :pswitch_b
    return-void

    .line 364
    :pswitch_c
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b

    .line 357
    nop

    :pswitch_data_14
    .packed-switch 0x6
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "rectangle"    # Landroid/graphics/Rect;

    .prologue
    .line 315
    iget-object v2, p0, mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v2

    if-nez v2, :cond_9

    .line 330
    :cond_8
    :goto_8
    return-void

    .line 318
    :cond_9
    iget-object v1, p0, mTempRect2:Landroid/graphics/Rect;

    .line 319
    .local v1, "magnifiedRegionBounds":Landroid/graphics/Rect;
    iget-object v2, p0, mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    .line 320
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 323
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 324
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 325
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 326
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 327
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 328
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8
.end method

.method public onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    .registers 5
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "rotation"    # I

    .prologue
    .line 345
    iget-object v0, p0, mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->onRotationChangedLocked()V

    .line 346
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 347
    return-void
.end method

.method public onWindowLayersChangedLocked()V
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 337
    iget-object v0, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 338
    return-void
.end method

.method public onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .registers 12
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "transition"    # I

    .prologue
    .line 376
    iget-object v4, p0, mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v1

    .line 377
    .local v1, "magnifying":Z
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 378
    .local v3, "type":I
    packed-switch p2, :pswitch_data_3c

    .line 419
    :cond_d
    :goto_d
    :pswitch_d
    return-void

    .line 381
    :pswitch_e
    if-eqz v1, :cond_d

    .line 384
    sparse-switch v3, :sswitch_data_46

    goto :goto_d

    .line 402
    :sswitch_14
    iget-object v0, p0, mTempRect2:Landroid/graphics/Rect;

    .line 403
    .local v0, "magnifiedRegionBounds":Landroid/graphics/Rect;
    iget-object v4, p0, mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    .line 405
    iget-object v2, p0, mTempRect1:Landroid/graphics/Rect;

    .line 406
    .local v2, "touchableRegionBounds":Landroid/graphics/Rect;
    iget-object v4, p0, mTempRegion1:Landroid/graphics/Region;

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 407
    iget-object v4, p0, mTempRegion1:Landroid/graphics/Region;

    invoke-virtual {v4, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 408
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 409
    iget-object v4, p0, mCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/view/WindowManagerInternal$MagnificationCallbacks;->onRectangleOnScreenRequested(IIII)V

    goto :goto_d

    .line 378
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 384
    :sswitch_data_46
    .sparse-switch
        0x2 -> :sswitch_14
        0x3e8 -> :sswitch_14
        0x3e9 -> :sswitch_14
        0x3ea -> :sswitch_14
        0x3eb -> :sswitch_14
        0x3ed -> :sswitch_14
        0x7d1 -> :sswitch_14
        0x7d2 -> :sswitch_14
        0x7d3 -> :sswitch_14
        0x7d5 -> :sswitch_14
        0x7d6 -> :sswitch_14
        0x7d7 -> :sswitch_14
        0x7d8 -> :sswitch_14
        0x7d9 -> :sswitch_14
        0x7da -> :sswitch_14
        0x7e4 -> :sswitch_14
        0x7e8 -> :sswitch_14
    .end sparse-switch
.end method

.method public setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .registers 3
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 306
    iget-object v0, p0, mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->updateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 307
    iget-object v0, p0, mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 308
    iget-object v0, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 309
    return-void
.end method
