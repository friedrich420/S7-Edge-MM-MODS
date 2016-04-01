.class Lcom/samsung/accessory/manager/SAccessoryManager$3;
.super Landroid/content/BroadcastReceiver;
.source "SAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/SAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .registers 2

    .prologue
    .line 273
    iput-object p1, p0, this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 275
    const-string v2, "com.samsung.accessory.authentication.action.TEST_AUTHENTICATION_REQUEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 276
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 277
    .local v0, "data":Landroid/os/Bundle;
    iget-object v2, p0, this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$000(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 278
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 279
    iget-object v2, p0, this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$000(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 281
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_27
    return-void
.end method
