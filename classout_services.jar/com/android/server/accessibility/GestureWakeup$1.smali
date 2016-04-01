.class Lcom/android/server/accessibility/GestureWakeup$1;
.super Landroid/os/Handler;
.source "GestureWakeup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/GestureWakeup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/GestureWakeup;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/GestureWakeup;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 214
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/GestureWakeup;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 224
    :goto_5
    return-void

    .line 219
    :pswitch_6
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/GestureWakeup;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/accessibility/GestureWakeup;->handleTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/GestureWakeup;->access$000(Lcom/android/server/accessibility/GestureWakeup;I)V

    goto :goto_5

    .line 217
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
