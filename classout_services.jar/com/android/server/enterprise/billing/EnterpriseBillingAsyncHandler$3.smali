.class Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$3;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseBillingAsyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V
    .registers 2

    .prologue
    .line 174
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 180
    const-string v1, "EnterpriseBillingAsyncHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageModificationReceiver - onreceive - start - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 182
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    return-void
.end method
