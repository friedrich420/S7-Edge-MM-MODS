.class Lcom/android/settings/wifi/WifiDialog$1;
.super Landroid/os/Handler;
.source "WifiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 221
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 229
    :goto_0
    return-void

    .line 223
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiDialog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    # invokes: Lcom/android/settings/wifi/WifiDialog;->showSoftInput()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDialog;->access$000(Lcom/android/settings/wifi/WifiDialog;)V

    goto :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
