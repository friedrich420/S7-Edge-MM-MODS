.class Lcom/android/systemui/qs/tiles/FlashlightTile$1;
.super Landroid/content/BroadcastReceiver;
.source "FlashlightTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/FlashlightTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/FlashlightTile;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 83
    const-string v5, "level"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 84
    .local v2, "batteryLevel":I
    const-string v5, "status"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 86
    .local v1, "battStatus":I
    const/4 v5, 0x5

    if-gt v2, v5, :cond_2

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    .line 87
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    # setter for: Lcom/android/systemui/qs/tiles/FlashlightTile;->mDisblebyBattery:Z
    invoke-static {v5, v3}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$002(Lcom/android/systemui/qs/tiles/FlashlightTile;Z)Z

    .line 88
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    # getter for: Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashLightEnabled:Z
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    const-string v5, "FlashlightTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_BATTERY_CHANGED - Level :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Status :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    # getter for: Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$200(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "emergency_mode"

    const/4 v7, -0x2

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 91
    .local v3, "emEnabled":Z
    :goto_0
    const-string v5, "FlashlightTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_BATTERY_CHANGED - emEnabled :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-nez v3, :cond_0

    .line 94
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    # getter for: Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$400(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    # setter for: Lcom/android/systemui/qs/tiles/FlashlightTile;->toastAlert:Landroid/widget/Toast;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$302(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 95
    # getter for: Lcom/android/systemui/qs/tiles/FlashlightTile;->toastAlert:Landroid/widget/Toast;
    invoke-static {}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$300()Landroid/widget/Toast;

    move-result-object v5

    const v6, 0x7f0d044c

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setText(I)V

    .line 96
    # getter for: Lcom/android/systemui/qs/tiles/FlashlightTile;->toastAlert:Landroid/widget/Toast;
    invoke-static {}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$300()Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 97
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    # invokes: Lcom/android/systemui/qs/tiles/FlashlightTile;->setEnable(Z)V
    invoke-static {v5, v4}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$500(Lcom/android/systemui/qs/tiles/FlashlightTile;Z)V

    .line 114
    .end local v1    # "battStatus":I
    .end local v2    # "batteryLevel":I
    .end local v3    # "emEnabled":Z
    :cond_0
    :goto_1
    return-void

    .restart local v1    # "battStatus":I
    .restart local v2    # "batteryLevel":I
    :cond_1
    move v3, v4

    .line 90
    goto :goto_0

    .line 101
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    # setter for: Lcom/android/systemui/qs/tiles/FlashlightTile;->mDisblebyBattery:Z
    invoke-static {v5, v4}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$002(Lcom/android/systemui/qs/tiles/FlashlightTile;Z)Z

    goto :goto_1

    .line 103
    .end local v1    # "battStatus":I
    .end local v2    # "batteryLevel":I
    :cond_3
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 104
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    # getter for: Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashLightEnabled:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    # getter for: Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashLightEnabled:Z
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Z

    move-result v5

    # invokes: Lcom/android/systemui/qs/tiles/FlashlightTile;->updateFlashlightNotiifcaton(Z)V
    invoke-static {v4, v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$600(Lcom/android/systemui/qs/tiles/FlashlightTile;Z)V

    goto :goto_1

    .line 107
    :cond_4
    const-string v5, "com.sec.android.systemui.action.FLASHLIGHT_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    :cond_5
    const-string v5, "FlashlightTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    # getter for: Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashLightEnabled:Z
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    # getter for: Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashLightEnabled:Z
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    # invokes: Lcom/android/systemui/qs/tiles/FlashlightTile;->setEnable(Z)V
    invoke-static {v5, v4}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$500(Lcom/android/systemui/qs/tiles/FlashlightTile;Z)V

    goto :goto_1
.end method
