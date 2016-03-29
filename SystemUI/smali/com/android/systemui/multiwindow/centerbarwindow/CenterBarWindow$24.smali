.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$24;
.super Landroid/os/Handler;
.source "CenterBarWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0

    .prologue
    .line 2754
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$24;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2756
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2779
    :goto_0
    :pswitch_0
    return-void

    .line 2758
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$24;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideButtonsPopupWindow(Z)V

    goto :goto_0

    .line 2766
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$24;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->showButtonPopupWindow()V
    invoke-static {v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$4500(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    .line 2767
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$24;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->startHideButtonTimer()V
    invoke-static {v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$3900(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    goto :goto_0

    .line 2771
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    .line 2772
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    goto :goto_0

    .line 2776
    .end local v0    # "event":Landroid/view/MotionEvent;
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$24;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$24;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$24;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterBarPoint:Landroid/graphics/Point;
    invoke-static {v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->drawCenterBar(II)V

    goto :goto_0

    .line 2756
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
