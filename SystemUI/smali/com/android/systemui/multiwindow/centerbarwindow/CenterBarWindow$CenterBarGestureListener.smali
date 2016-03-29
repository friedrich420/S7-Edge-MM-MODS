.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CenterBarWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CenterBarGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;


# direct methods
.method private constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    .param p2, "x1"    # Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$1;

    .prologue
    .line 1348
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1351
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # setter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDoubleTabbed:Z
    invoke-static {v0, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2402(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z

    .line 1352
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayWidth:I
    invoke-static {v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayHeight:I
    invoke-static {v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$400(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1353
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 1354
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideButtonsPopupWindow(Z)V

    .line 1355
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 1356
    return v4
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0xcd

    .line 1361
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransitionFromCenterBar(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1392
    :cond_0
    :goto_0
    return-void

    .line 1364
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDoubleTabbed:Z
    invoke-static {v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2400(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1367
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsInLongPress:Z
    invoke-static {v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1371
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->isEnableMakePenWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1375
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 1377
    .local v1, "touchP":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v2, v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1378
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v2, v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1379
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I
    invoke-static {v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1900(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->changeTaskToCascade(Landroid/graphics/Point;IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1382
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    const/4 v3, 0x1

    # setter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mIsInLongPress:Z
    invoke-static {v2, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1102(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z

    .line 1383
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideGuideCenterBar()V

    .line 1385
    move-object v0, p1

    .line 1386
    .local v0, "event":Landroid/view/MotionEvent;
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1387
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v2, v2, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v3, v3, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    const/16 v4, 0xce

    invoke-static {v3, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1389
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$CenterBarGestureListener;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "SPLW"

    const-string v4, "CHANGE-POPUP"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
