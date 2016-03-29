.class Lcom/android/settings/wifi/WifiSettings$28;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->onIwlanMenuPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 2769
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 2772
    if-nez p1, :cond_0

    .line 2797
    :goto_0
    return-void

    .line 2775
    :cond_0
    const/4 v2, 0x0

    .line 2776
    .local v2, "isChecked":Z
    if-ne p2, v5, :cond_1

    .line 2777
    const/4 v2, 0x1

    .line 2781
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.lguplus.common.wificm.mwlan"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 2782
    .local v3, "mWlan":Landroid/content/Context;
    const-string v5, "mwlan"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2783
    .local v4, "pref_mWlanCheck":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2784
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v5, "permission_allowed_2"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2785
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2786
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.lguplus.common.wificm.mwlan.interface"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2787
    .local v1, "i":Landroid/content/Intent;
    const-string v5, "type"

    const-string v6, "notify"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2788
    const-string v5, "action"

    const-string v6, "permissionChanged"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2789
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2790
    const-string v5, "WifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mWlan isChecked = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v2, :cond_2

    const v5, 0x7f0e037c

    :goto_1
    const/4 v7, 0x1

    invoke-static {v6, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2796
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "mWlan":Landroid/content/Context;
    .end local v4    # "pref_mWlanCheck":Landroid/content/SharedPreferences;
    :goto_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 2791
    .restart local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "i":Landroid/content/Intent;
    .restart local v3    # "mWlan":Landroid/content/Context;
    .restart local v4    # "pref_mWlanCheck":Landroid/content/SharedPreferences;
    :cond_2
    const v5, 0x7f0e037d

    goto :goto_1

    .line 2794
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "mWlan":Landroid/content/Context;
    .end local v4    # "pref_mWlanCheck":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v5

    goto :goto_2
.end method
