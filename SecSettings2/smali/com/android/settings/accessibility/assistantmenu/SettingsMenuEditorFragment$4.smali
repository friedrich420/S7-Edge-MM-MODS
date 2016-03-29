.class Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;
.super Ljava/lang/Object;
.source "SettingsMenuEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 373
    const-string v1, "SettingsMenuEditorFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGridViewTouchListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 446
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :cond_1
    :goto_1
    return v0

    .line 377
    :pswitch_0
    const-string v0, "SettingsMenuEditorFragment"

    const-string v1, "mGridViewTouchListener_ACTION_DOWN"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$200(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    const-string v1, "SettingsMenuEditorFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGridViewTouchListener - ACTION_MOVE_X: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ACTION_MOVE_Y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionX:F
    invoke-static {v3}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$400(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)F

    move-result v3

    sub-float/2addr v2, v3

    # += operator for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F
    invoke-static {v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$316(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F

    .line 392
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionY:F
    invoke-static {v3}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$600(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)F

    move-result v3

    sub-float/2addr v2, v3

    # += operator for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F
    invoke-static {v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$516(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F

    .line 394
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    # setter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionX:F
    invoke-static {v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$402(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F

    .line 395
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    # setter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionY:F
    invoke-static {v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$602(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F

    .line 397
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # invokes: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->UpdateWidget()V
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$700(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    .line 401
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # invokes: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->IsScrollArea()Z
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$800(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$900(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 403
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$900(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$900(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mScrollDirection:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;
    invoke-static {v3}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$1000(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 409
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$900(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 411
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$1100(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # invokes: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->FindNearItem()V
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$1200(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    goto/16 :goto_1

    .line 426
    :pswitch_2
    const-string v1, "SettingsMenuEditorFragment"

    const-string v2, "mGridViewTouchListener_ACTION_CANCEL"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$200(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # invokes: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->RemoveWidget()V
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$1300(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    .line 429
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # invokes: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->AssignDragItem()V
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$1400(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    goto/16 :goto_1

    .line 435
    :pswitch_3
    const-string v1, "SettingsMenuEditorFragment"

    const-string v2, "mGridViewTouchListener_ACTION_UP"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$200(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # invokes: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->RemoveWidget()V
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$1300(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    .line 439
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # invokes: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->AssignDragItem()V
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$1400(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    goto/16 :goto_1

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
