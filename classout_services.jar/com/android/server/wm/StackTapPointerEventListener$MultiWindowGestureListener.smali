.class Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StackTapPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/StackTapPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/StackTapPointerEventListener;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/StackTapPointerEventListener;)V
    .registers 2

    .prologue
    .line 330
    iput-object p1, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/StackTapPointerEventListener;Lcom/android/server/wm/StackTapPointerEventListener$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/StackTapPointerEventListener;
    .param p2, "x1"    # Lcom/android/server/wm/StackTapPointerEventListener$1;

    .prologue
    .line 330
    invoke-direct {p0, p1}, <init>(Lcom/android/server/wm/StackTapPointerEventListener;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 334
    iget-object v7, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    const/4 v10, 0x0

    # invokes: Lcom/android/server/wm/StackTapPointerEventListener;->findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    invoke-static {v7, v8, v9, v10}, Lcom/android/server/wm/StackTapPointerEventListener;->access$100(Lcom/android/server/wm/StackTapPointerEventListener;FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 335
    .local v5, "targetWin":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_16a

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    if-eqz v7, :cond_16a

    .line 336
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x898

    if-eq v7, v8, :cond_2d

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_2f

    .line 338
    :cond_2d
    const/4 v7, 0x0

    .line 398
    :goto_2e
    return v7

    .line 340
    :cond_2f
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    .line 341
    .local v4, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v4, :cond_16a

    .line 342
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    .line 343
    .local v6, "zone":I
    iget-object v7, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v7}, Lcom/android/server/wm/StackTapPointerEventListener;->access$300(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v8}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v2

    .line 344
    .local v2, "point":Landroid/graphics/Point;
    iget-object v7, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v7}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 351
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v7, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v7}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v1, v7, Landroid/content/res/Configuration;->orientation:I

    .line 354
    .local v1, "orientation":I
    const/4 v7, 0x1

    if-ne v1, v7, :cond_fa

    .line 355
    const/4 v7, 0x3

    if-ne v6, v7, :cond_9b

    .line 356
    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->y:I

    .line 391
    :cond_6f
    :goto_6f
    iget-object v7, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v7}, Lcom/android/server/wm/StackTapPointerEventListener;->access$300(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v8}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    invoke-virtual {v7, v8, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 392
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v3, "refreshCenterbarIntent":Landroid/content/Intent;
    const-string v7, "com.sec.android.extra.CONTROL_BAR_POS"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 394
    iget-object v7, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v7}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 395
    const/4 v7, 0x1

    goto :goto_2e

    .line 357
    .end local v3    # "refreshCenterbarIntent":Landroid/content/Intent;
    :cond_9b
    const/16 v7, 0xc

    if-ne v6, v7, :cond_a8

    .line 358
    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v7, v7, 0x14

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->y:I

    goto :goto_6f

    .line 359
    :cond_a8
    const/4 v7, 0x1

    if-ne v6, v7, :cond_bc

    .line 360
    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->x:I

    .line 361
    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->y:I

    goto :goto_6f

    .line 362
    :cond_bc
    const/4 v7, 0x2

    if-ne v6, v7, :cond_d0

    .line 363
    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v7, v7, 0x14

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->x:I

    .line 364
    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->y:I

    goto :goto_6f

    .line 365
    :cond_d0
    const/4 v7, 0x4

    if-ne v6, v7, :cond_e4

    .line 366
    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->x:I

    .line 367
    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v7, v7, 0x14

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->y:I

    goto :goto_6f

    .line 368
    :cond_e4
    const/16 v7, 0x8

    if-ne v6, v7, :cond_6f

    .line 369
    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v7, v7, 0x14

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->x:I

    .line 370
    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v7, v7, 0x14

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_6f

    .line 373
    :cond_fa
    const/4 v7, 0x3

    if-ne v6, v7, :cond_107

    .line 374
    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->x:I

    goto/16 :goto_6f

    .line 375
    :cond_107
    const/16 v7, 0xc

    if-ne v6, v7, :cond_115

    .line 376
    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v7, v7, 0x14

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->x:I

    goto/16 :goto_6f

    .line 377
    :cond_115
    const/4 v7, 0x1

    if-ne v6, v7, :cond_12a

    .line 378
    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->x:I

    .line 379
    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_6f

    .line 380
    :cond_12a
    const/4 v7, 0x2

    if-ne v6, v7, :cond_13f

    .line 381
    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->x:I

    .line 382
    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v7, v7, 0x14

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_6f

    .line 383
    :cond_13f
    const/4 v7, 0x4

    if-ne v6, v7, :cond_154

    .line 384
    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v7, v7, 0x14

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->x:I

    .line 385
    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_6f

    .line 386
    :cond_154
    const/16 v7, 0x8

    if-ne v6, v7, :cond_6f

    .line 387
    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v7, v7, 0x14

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->x:I

    .line 388
    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v7, v7, 0x14

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_6f

    .line 398
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1    # "orientation":I
    .end local v2    # "point":Landroid/graphics/Point;
    .end local v4    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v6    # "zone":I
    :cond_16a
    const/4 v7, 0x0

    goto/16 :goto_2e
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 442
    iget-object v4, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    # invokes: Lcom/android/server/wm/StackTapPointerEventListener;->findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/wm/StackTapPointerEventListener;->access$100(Lcom/android/server/wm/StackTapPointerEventListener;FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 443
    .local v2, "targetWin":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_12

    .line 460
    :cond_11
    :goto_11
    return v7

    .line 447
    :cond_12
    iget-object v4, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_11

    iget-object v4, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    if-eq v2, v4, :cond_11

    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "hasChild":Z
    iget-object v4, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 451
    .local v3, "ws":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 452
    const/4 v0, 0x1

    goto :goto_35

    .line 455
    .end local v3    # "ws":Lcom/android/server/wm/WindowState;
    :cond_49
    if-nez v0, :cond_11

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v4, :cond_11

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v5, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v4, v5, :cond_11

    .line 457
    iget-object v4, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, v7}, Landroid/view/WindowManagerPolicy;->closeMultiWindowTrayBar(Z)Z

    goto :goto_11
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 403
    iget-object v7, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    # invokes: Lcom/android/server/wm/StackTapPointerEventListener;->findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    invoke-static {v7, v8, v9, v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$100(Lcom/android/server/wm/StackTapPointerEventListener;FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 404
    .local v4, "targetWin":Lcom/android/server/wm/WindowState;
    if-nez v4, :cond_13

    .line 438
    :cond_12
    :goto_12
    return v5

    .line 408
    :cond_13
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    if-nez v7, :cond_2b

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->checkFixedBound()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 410
    :cond_2b
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x898

    if-eq v7, v8, :cond_12

    .line 414
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    .line 415
    .local v3, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v3, :cond_12

    .line 418
    const/16 v7, 0x1000

    invoke-virtual {v3, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_12

    .line 422
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZoneLevel()I

    move-result v7

    if-ne v7, v6, :cond_12

    .line 423
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 424
    .local v1, "point":Landroid/graphics/Point;
    iget-object v5, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 426
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v1, Landroid/graphics/Point;->x:I

    .line 427
    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v1, Landroid/graphics/Point;->y:I

    .line 429
    iget-object v5, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$300(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v5

    iget-object v7, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v7}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    invoke-virtual {v5, v7, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 430
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v2, "refreshCenterbarIntent":Landroid/content/Intent;
    const-string v5, "com.sec.android.extra.CONTROL_BAR_POS"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 432
    iget-object v5, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 434
    iget-object v5, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v7, 0x1f

    iget-object v8, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F
    invoke-static {v8}, Lcom/android/server/wm/StackTapPointerEventListener;->access$500(Lcom/android/server/wm/StackTapPointerEventListener;)F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F
    invoke-static {v9}, Lcom/android/server/wm/StackTapPointerEventListener;->access$600(Lcom/android/server/wm/StackTapPointerEventListener;)F

    move-result v9

    float-to-int v9, v9

    iget-object v10, p0, this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v10}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    move v5, v6

    .line 435
    goto/16 :goto_12
.end method
