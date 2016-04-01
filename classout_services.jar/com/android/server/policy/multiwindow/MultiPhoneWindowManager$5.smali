.class Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$5;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->updateMultiWindowTrayBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

.field final synthetic val$forceShow:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Z)V
    .registers 3

    .prologue
    .line 883
    iput-object p1, p0, this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iput-boolean p2, p0, val$forceShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 885
    iget-object v4, p0, this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    # invokes: Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->isDeviceProvisioned()Z
    invoke-static {v4}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->access$400(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 887
    :try_start_8
    iget-object v4, p0, this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->access$300(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 888
    .local v3, "updateSettingsIntent":Landroid/content/Intent;
    iget-object v4, p0, this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I
    invoke-static {v4}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->access$000(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)I

    move-result v4

    if-nez v4, :cond_2c

    .line 889
    const-string v4, "MultiPhoneWindowManager"

    const-string/jumbo v5, "updateMultiWindowTrayBar() -> stopService : com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v4, p0, this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 911
    .end local v3    # "updateSettingsIntent":Landroid/content/Intent;
    :cond_2b
    :goto_2b
    return-void

    .line 893
    .restart local v3    # "updateSettingsIntent":Landroid/content/Intent;
    :cond_2c
    iget-object v4, p0, this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 894
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "multi_window_not_force_show"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 896
    .local v1, "isNotForceShow":I
    if-lez v1, :cond_62

    .line 897
    const-string v4, "com.sec.android.multiwindow.ui.forceshow"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 898
    const-string/jumbo v4, "multi_window_not_force_show"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 903
    :goto_4d
    const-string v4, "MultiPhoneWindowManager"

    const-string/jumbo v5, "updateMultiWindowTrayBar() -> startService : com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v4, p0, this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_5c} :catch_5d

    goto :goto_2b

    .line 907
    .end local v1    # "isNotForceShow":I
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "updateSettingsIntent":Landroid/content/Intent;
    :catch_5d
    move-exception v0

    .line 908
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b

    .line 900
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isNotForceShow":I
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "updateSettingsIntent":Landroid/content/Intent;
    :cond_62
    :try_start_62
    const-string v4, "com.sec.android.multiwindow.ui.forceshow"

    iget-boolean v5, p0, val$forceShow:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_69} :catch_5d

    goto :goto_4d
.end method
