.class Lcom/android/systemui/recents/views/RecentsView$4;
.super Landroid/os/Handler;
.source "RecentsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;)V
    .locals 0

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$4;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1299
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1305
    :goto_0
    return-void

    .line 1301
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    .line 1302
    .local v0, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$4;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v1, v1, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v1, v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->dismissToApp(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_0

    .line 1299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
