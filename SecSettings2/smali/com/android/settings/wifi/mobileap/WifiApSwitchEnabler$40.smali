.class Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$40;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showFirstTimePoup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    .prologue
    .line 1966
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$40;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1968
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$40;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->nevershowagain:Z
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$2000(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1969
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$40;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$40;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "dontshowmemhsfirsttime"

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->putBooleanSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5, v7}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$2100(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1971
    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isMetroPCS()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1972
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$40;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v3, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1973
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$40;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 1998
    :cond_1
    :goto_0
    return-void

    .line 1975
    :cond_2
    const/4 v1, 0x0

    .line 1978
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$40;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1979
    if-eqz v1, :cond_4

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 1980
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1981
    .local v2, "pickIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isMetroPCS()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1982
    const-string v3, "helphub:section"

    const-string v4, "tethering_tmo"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1986
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$40;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1993
    .end local v2    # "pickIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1994
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "WifiApSwitchEnabler"

    const-string v4, "Exception!! help NameNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$40;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v3, v7}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0

    .line 1984
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "pickIntent":Landroid/content/Intent;
    :cond_3
    :try_start_1
    const-string v3, "helphub:section"

    const-string v4, "tethering_mtr"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1988
    .end local v2    # "pickIntent":Landroid/content/Intent;
    :cond_4
    if-eqz v1, :cond_1

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1989
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1990
    .restart local v2    # "pickIntent":Landroid/content/Intent;
    const-string v3, "helphub:appid"

    const-string v4, "tethering"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1991
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$40;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
