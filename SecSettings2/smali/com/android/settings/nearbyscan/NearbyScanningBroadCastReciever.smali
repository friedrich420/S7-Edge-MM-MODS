.class public Lcom/android/settings/nearbyscan/NearbyScanningBroadCastReciever;
.super Landroid/content/BroadcastReceiver;
.source "NearbyScanningBroadCastReciever.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 14
    if-eqz p2, :cond_0

    if-nez p1, :cond_3

    .line 15
    :cond_0
    const-string v4, "NearbyScanningBroadCastReciever"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "intent is null"

    :goto_0
    invoke-static {v4, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_1
    :goto_1
    return-void

    .line 15
    :cond_2
    const-string v3, "context is null"

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 21
    const-string v3, "NearbyScanningBroadCastReciever"

    const-string v4, "AIRPLANE_MODE_CHANGED"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/nearbyscan/Util;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v2

    .line 25
    .local v2, "settingsValue":I
    const-string v3, "NearbyScanningBroadCastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "settingsValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {p1}, Lcom/android/settings/nearbyscan/Util;->getAirPlaneModeStatus(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 27
    if-ne v2, v6, :cond_1

    .line 28
    invoke-static {p1, v7}, Lcom/android/settings/nearbyscan/Util;->setDBInt(Landroid/content/Context;I)V

    goto :goto_1

    .line 31
    :cond_4
    if-ne v2, v7, :cond_1

    .line 32
    invoke-static {p1, v6}, Lcom/android/settings/nearbyscan/Util;->setDBInt(Landroid/content/Context;I)V

    goto :goto_1

    .line 35
    .end local v2    # "settingsValue":I
    :cond_5
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "data":Ljava/lang/String;
    if-eqz v1, :cond_6

    const-string v3, "com.samsung.android.beaconmanager"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 38
    const-string v3, "NearbyScanningBroadCastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_PACKAGE_ADDED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v3, "com.samsung.android.beaconmanager"

    invoke-static {p1, v3}, Lcom/android/settings/nearbyscan/Util;->sendInstallBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :cond_6
    if-eqz v1, :cond_1

    const-string v3, "com.samsung.android.easysetup"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    const-string v3, "NearbyScanningBroadCastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_PACKAGE_ADDED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v3, "com.samsung.android.easysetup"

    invoke-static {p1, v3}, Lcom/android/settings/nearbyscan/Util;->sendInstallBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
