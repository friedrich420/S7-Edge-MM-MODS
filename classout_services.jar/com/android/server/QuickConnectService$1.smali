.class Lcom/android/server/QuickConnectService$1;
.super Landroid/os/Handler;
.source "QuickConnectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QuickConnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/QuickConnectService;


# direct methods
.method constructor <init>(Lcom/android/server/QuickConnectService;)V
    .registers 2

    .prologue
    .line 266
    iput-object p1, p0, this$0:Lcom/android/server/QuickConnectService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 269
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    .line 279
    :goto_6
    return-void

    .line 271
    :pswitch_7
    iget-object v0, p0, this$0:Lcom/android/server/QuickConnectService;

    # getter for: Lcom/android/server/QuickConnectService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/QuickConnectService;->access$200(Lcom/android/server/QuickConnectService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/QuickConnectService;

    # getter for: Lcom/android/server/QuickConnectService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/QuickConnectService;->access$200(Lcom/android/server/QuickConnectService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040b37

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 274
    :pswitch_26
    iget-object v0, p0, this$0:Lcom/android/server/QuickConnectService;

    # getter for: Lcom/android/server/QuickConnectService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/QuickConnectService;->access$200(Lcom/android/server/QuickConnectService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/QuickConnectService;

    # getter for: Lcom/android/server/QuickConnectService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/QuickConnectService;->access$200(Lcom/android/server/QuickConnectService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040a6c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 269
    nop

    :pswitch_data_46
    .packed-switch 0x7d0
        :pswitch_7
        :pswitch_26
    .end packed-switch
.end method
