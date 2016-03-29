.class Lcom/android/systemui/statusbar/phone/QSTileHost$SVoiceCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SVoiceCommandReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$SVoiceCommandReceiver;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/QSTileHost;Lcom/android/systemui/statusbar/phone/QSTileHost$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/QSTileHost;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/QSTileHost$1;

    .prologue
    .line 533
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QSTileHost$SVoiceCommandReceiver;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    return-void
.end method

.method private getTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 579
    const-string v2, "WiFiHotspotTile"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "WifiHotspotTile"

    .line 583
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$SVoiceCommandReceiver;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->access$300(Lcom/android/systemui/statusbar/phone/QSTileHost;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile;

    .line 584
    .local v1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.systemui.qs.tiles."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 589
    .end local v1    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :goto_1
    return-object v1

    .line 580
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v2, "AutoRotateTile"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "RotationLockTile"

    goto :goto_0

    .line 581
    :cond_3
    const-string v2, "TorchLightTile"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "FlashlightTile"

    goto :goto_0

    .line 589
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 537
    const-string v0, "com.sec.voice.permission.RECEIVE"

    .line 538
    .local v0, "perm":Ljava/lang/String;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 539
    .local v1, "svoiceFilter":Landroid/content/IntentFilter;
    const-string v2, "com.sec.android.quicksetting.SVOICE_COMMAND"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 540
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$SVoiceCommandReceiver;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->access$100(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 541
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 545
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "action":Ljava/lang/String;
    const-string v7, "com.sec.android.quicksetting.SVOICE_COMMAND"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 548
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "NAME"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "exName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "STATE"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, "exState":Ljava/lang/String;
    const-string v7, "QSTileHost"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SVOICE command click() NAME="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", exState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost$SVoiceCommandReceiver;->getTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v5

    .line 554
    .local v5, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    if-nez v5, :cond_1

    .line 576
    .end local v1    # "exName":Ljava/lang/String;
    .end local v2    # "exState":Ljava/lang/String;
    .end local v5    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_0
    :goto_0
    return-void

    .line 556
    .restart local v1    # "exName":Ljava/lang/String;
    .restart local v2    # "exState":Ljava/lang/String;
    .restart local v5    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_1
    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    .line 557
    .local v3, "ms":Lcom/android/systemui/qs/QSTile$MultiState;
    iget v6, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 560
    .local v6, "value":I
    const-string v7, "AutoRotateTile"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "RotationLockTile"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 561
    :cond_2
    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    .line 563
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$SVoiceCommandReceiver;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    # getter for: Lcom/android/systemui/statusbar/phone/QSTileHost;->mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/QSTileHost;->access$200(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/statusbar/policy/RotationLockController;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result v4

    .line 564
    .local v4, "rotateLocked":Z
    const-string v7, "ON"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v4, :cond_4

    :cond_3
    const-string v7, "OFF"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez v4, :cond_0

    .line 566
    :cond_4
    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->click()V

    goto :goto_0

    .line 570
    .end local v4    # "rotateLocked":Z
    :cond_5
    const-string v7, "ON"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    :cond_6
    const-string v7, "OFF"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 572
    :cond_7
    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->click()V

    goto :goto_0
.end method
