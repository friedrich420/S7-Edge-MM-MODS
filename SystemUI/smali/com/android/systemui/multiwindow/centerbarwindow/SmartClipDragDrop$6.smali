.class Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$6;
.super Ljava/lang/Object;
.source "SmartClipDragDrop.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


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
    .line 357
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$6;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v4, 0x1

    .line 360
    const-string v1, "SmartClipDragDrop"

    const-string v2, "onDrag"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 363
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 399
    const-string v1, "onDrag"

    const-string v2, "Unknown action type received by OnDragListener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :goto_0
    return v4

    .line 366
    :pswitch_0
    const-string v1, "SmartClipDragDrop"

    const-string v2, "onDrag : ACTION_DRAG_STARTED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$6;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->notifyStartDragMode()V
    invoke-static {v1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)V

    .line 368
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$6;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    # setter for: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mIsDragging:Z
    invoke-static {v1, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$202(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Z)Z

    goto :goto_0

    .line 373
    :pswitch_1
    const-string v1, "SmartClipDragDrop"

    const-string v2, "onDrag : ACTION_DRAG_ENTERED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    :pswitch_2
    const-string v1, "SmartClipDragDrop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrag : ACTION_DRAG_LOCATION : x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    :pswitch_3
    const-string v1, "SmartClipDragDrop"

    const-string v2, "onDrag : ACTION_DRAG_EXITED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    :pswitch_4
    const-string v1, "SmartClipDragDrop"

    const-string v2, "onDrag : ACTION_DROP"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    :pswitch_5
    const-string v1, "SmartClipDragDrop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrag : ACTION_DRAG_ENDED result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$6;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    const/4 v2, 0x0

    # setter for: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mIsDragging:Z
    invoke-static {v1, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$202(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Z)Z

    .line 395
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$6;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->stopService()V

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
