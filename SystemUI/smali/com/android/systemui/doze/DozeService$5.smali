.class Lcom/android/systemui/doze/DozeService$5;
.super Ljava/lang/Object;
.source "DozeService.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeService;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuzzBeepBlinked()V
    .locals 4

    .prologue
    .line 462
    # getter for: Lcom/android/systemui/doze/DozeService;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$900(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBuzzBeepBlinked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # invokes: Lcom/android/systemui/doze/DozeService;->updateNotificationPulse(J)V
    invoke-static {v0, v2, v3}, Lcom/android/systemui/doze/DozeService;->access$1500(Lcom/android/systemui/doze/DozeService;J)V

    .line 464
    return-void
.end method

.method public onNewNotifications()V
    .locals 2

    .prologue
    .line 456
    # getter for: Lcom/android/systemui/doze/DozeService;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$900(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onNewNotifications (noop)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    return-void
.end method

.method public onNotificationLight(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 468
    # getter for: Lcom/android/systemui/doze/DozeService;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$900(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationLight on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$1100(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-ne v0, p1, :cond_2

    .line 474
    :cond_1
    :goto_0
    return-void

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    # setter for: Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z
    invoke-static {v0, p1}, Lcom/android/systemui/doze/DozeService;->access$1102(Lcom/android/systemui/doze/DozeService;Z)Z

    .line 471
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$1100(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    # invokes: Lcom/android/systemui/doze/DozeService;->updateNotificationPulseDueToLight()V
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$1600(Lcom/android/systemui/doze/DozeService;)V

    goto :goto_0
.end method

.method public onPowerSaveChanged(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    # setter for: Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z
    invoke-static {v0, p1}, Lcom/android/systemui/doze/DozeService;->access$1702(Lcom/android/systemui/doze/DozeService;Z)Z

    .line 479
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$1700(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mDreaming:Z
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$000(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$5;->this$0:Lcom/android/systemui/doze/DozeService;

    # invokes: Lcom/android/systemui/doze/DozeService;->finishToSavePower()V
    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$1800(Lcom/android/systemui/doze/DozeService;)V

    .line 482
    :cond_0
    return-void
.end method
