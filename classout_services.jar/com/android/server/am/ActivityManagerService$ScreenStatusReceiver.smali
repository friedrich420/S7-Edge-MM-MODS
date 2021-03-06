.class Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .prologue
    .line 17256
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    .line 17260
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    .line 17298
    :cond_9
    :goto_9
    return-void

    .line 17263
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.stk.check_screen_idle"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 17264
    const-string v5, "ActivityManager"

    const-string v6, "ICC has requested idle screen status"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17265
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.stk.idle_screen"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17266
    .local v1, "idleScreenIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17267
    iget-object v5, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v2

    .line 17268
    .local v2, "isIdle":Z
    const-string v5, "SCREEN_IDLE"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17269
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcasting Home idle screen Intent SCREEN_IDLE is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17271
    iget-object v5, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9

    .line 17274
    .end local v1    # "idleScreenIntent":Landroid/content/Intent;
    .end local v2    # "isIdle":Z
    :cond_58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 17275
    const/4 v4, -0x1

    .line 17276
    .local v4, "siopLevel":I
    const/4 v0, -0x1

    .line 17277
    .local v0, "battOverheatLevel":I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 17278
    .local v3, "mExtras":Landroid/os/Bundle;
    if-eqz v3, :cond_9

    .line 17279
    const-string v5, "check_cooldown_level"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 17280
    if-eq v4, v8, :cond_79

    .line 17281
    iget-object v5, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    # setter for: Lcom/android/server/am/ActivityManagerService;->mSIOPLevel:I
    invoke-static {v5, v4}, Lcom/android/server/am/ActivityManagerService;->access$2502(Lcom/android/server/am/ActivityManagerService;I)I

    .line 17283
    :cond_79
    const-string v5, "batt_temp_level"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 17284
    if-eq v0, v8, :cond_86

    .line 17285
    iget-object v5, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    # setter for: Lcom/android/server/am/ActivityManagerService;->mBatteryOverheatLevel:I
    invoke-static {v5, v0}, Lcom/android/server/am/ActivityManagerService;->access$2602(Lcom/android/server/am/ActivityManagerService;I)I

    .line 17287
    :cond_86
    iget-object v5, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v6, "overheat_id"

    const v7, 0x10408b9

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    # setter for: Lcom/android/server/am/ActivityManagerService;->mOverheatTextId:I
    invoke-static {v5, v6}, Lcom/android/server/am/ActivityManagerService;->access$1202(Lcom/android/server/am/ActivityManagerService;I)I

    .line 17288
    iget-object v5, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSIOPLevel:I
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$2500(Lcom/android/server/am/ActivityManagerService;)I

    move-result v5

    if-ne v5, v8, :cond_a5

    iget-object v5, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mBatteryOverheatLevel:I
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$2600(Lcom/android/server/am/ActivityManagerService;)I

    move-result v5

    if-eq v5, v8, :cond_c3

    .line 17289
    :cond_a5
    const-string v5, "check_cooldown_list"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    if-eqz v5, :cond_c3

    .line 17290
    iget-object v5, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$2700(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 17291
    iget-object v6, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "check_cooldown_list"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    # setter for: Lcom/android/server/am/ActivityManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;
    invoke-static {v6, v5}, Lcom/android/server/am/ActivityManagerService;->access$2702(Lcom/android/server/am/ActivityManagerService;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 17294
    :cond_c3
    const-string v5, "checkingSIOP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VZWLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSIOPLevel:I
    invoke-static {v7}, Lcom/android/server/am/ActivityManagerService;->access$2500(Lcom/android/server/am/ActivityManagerService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", OverheatLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mBatteryOverheatLevel:I
    invoke-static {v7}, Lcom/android/server/am/ActivityManagerService;->access$2600(Lcom/android/server/am/ActivityManagerService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9
.end method
