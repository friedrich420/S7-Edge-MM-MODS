.class Lcom/android/settings/TetherService$2;
.super Landroid/content/BroadcastReceiver;
.source "TetherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherService;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherService;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 270
    # getter for: Lcom/android/settings/TetherService;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/TetherService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "TetherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got provision result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "provisionResponse":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    # getter for: Lcom/android/settings/TetherService;->mInProvisionCheck:Z
    invoke-static {v2}, Lcom/android/settings/TetherService;->access$100(Lcom/android/settings/TetherService;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 276
    const-string v2, "TetherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected provision response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_1
    :goto_0
    return-void

    .line 279
    :cond_2
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    # getter for: Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/TetherService;->access$300(Lcom/android/settings/TetherService;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    # getter for: Lcom/android/settings/TetherService;->mCurrentTypeIndex:I
    invoke-static {v3}, Lcom/android/settings/TetherService;->access$200(Lcom/android/settings/TetherService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 280
    .local v0, "checkType":I
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    # setter for: Lcom/android/settings/TetherService;->mInProvisionCheck:Z
    invoke-static {v2, v5}, Lcom/android/settings/TetherService;->access$102(Lcom/android/settings/TetherService;Z)Z

    .line 281
    const-string v2, "EntitlementResult"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 282
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    # getter for: Lcom/android/settings/TetherService;->mEnableWifiAfterCheck:Z
    invoke-static {v2}, Lcom/android/settings/TetherService;->access$400(Lcom/android/settings/TetherService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 283
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    # invokes: Lcom/android/settings/TetherService;->enableWifiTetheringIfNeeded()V
    invoke-static {v2}, Lcom/android/settings/TetherService;->access$500(Lcom/android/settings/TetherService;)V

    .line 284
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    # setter for: Lcom/android/settings/TetherService;->mEnableWifiAfterCheck:Z
    invoke-static {v2, v5}, Lcom/android/settings/TetherService;->access$402(Lcom/android/settings/TetherService;Z)Z

    .line 300
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    # ++operator for: Lcom/android/settings/TetherService;->mCurrentTypeIndex:I
    invoke-static {v2}, Lcom/android/settings/TetherService;->access$204(Lcom/android/settings/TetherService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    # getter for: Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/TetherService;->access$300(Lcom/android/settings/TetherService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 302
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    invoke-virtual {v2}, Lcom/android/settings/TetherService;->stopSelf()V

    goto :goto_0

    .line 287
    :cond_4
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 289
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    # invokes: Lcom/android/settings/TetherService;->disableWifiTethering()V
    invoke-static {v2}, Lcom/android/settings/TetherService;->access$600(Lcom/android/settings/TetherService;)V

    goto :goto_1

    .line 292
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    # invokes: Lcom/android/settings/TetherService;->disableBtTethering()V
    invoke-static {v2}, Lcom/android/settings/TetherService;->access$700(Lcom/android/settings/TetherService;)V

    goto :goto_1

    .line 295
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    # invokes: Lcom/android/settings/TetherService;->disableUsbTethering()V
    invoke-static {v2}, Lcom/android/settings/TetherService;->access$800(Lcom/android/settings/TetherService;)V

    goto :goto_1

    .line 305
    :cond_5
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    iget-object v3, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    # getter for: Lcom/android/settings/TetherService;->mCurrentTypeIndex:I
    invoke-static {v3}, Lcom/android/settings/TetherService;->access$200(Lcom/android/settings/TetherService;)I

    move-result v3

    # invokes: Lcom/android/settings/TetherService;->startProvisioning(I)V
    invoke-static {v2, v3}, Lcom/android/settings/TetherService;->access$900(Lcom/android/settings/TetherService;I)V

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
