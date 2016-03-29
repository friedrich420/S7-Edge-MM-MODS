.class Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;
.super Ljava/lang/Object;
.source "SmartClipDragDrop.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->initDragDrop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    .line 410
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 411
    move-object v0, p1

    .line 412
    .local v0, "getView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 413
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 414
    .local v2, "y":I
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iput v1, v3, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mLastTouchX:I

    .line 415
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iput v2, v3, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mLastTouchY:I

    .line 416
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mThread:Landroid/os/HandlerThread;
    invoke-static {v3}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$300(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/os/HandlerThread;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mThread:Landroid/os/HandlerThread;
    invoke-static {v3}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$300(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v4, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v3, v4, :cond_0

    .line 417
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mThread:Landroid/os/HandlerThread;
    invoke-static {v3}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$300(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 418
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mThread:Landroid/os/HandlerThread;
    invoke-static {v4}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$300(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    # setter for: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mServiceLooper:Landroid/os/Looper;
    invoke-static {v3, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$402(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/os/Looper;)Landroid/os/Looper;

    .line 419
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mServiceLooper:Landroid/os/Looper;
    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$400(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    # setter for: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v3, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$502(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/os/Handler;)Landroid/os/Handler;

    .line 420
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$500(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7$1;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;Landroid/view/View;II)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 437
    .end local v0    # "getView":Landroid/view/View;
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    :goto_0
    return v8

    .line 427
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 428
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mLastTouchX:I

    .line 429
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mLastTouchY:I

    goto :goto_0

    .line 430
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 431
    const-string v3, "SmartClipDragDrop"

    const-string v4, "onTouch : ACTION_UP : stopService()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$500(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 433
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$500(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 435
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-virtual {v3}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->stopService()V

    goto :goto_0
.end method
