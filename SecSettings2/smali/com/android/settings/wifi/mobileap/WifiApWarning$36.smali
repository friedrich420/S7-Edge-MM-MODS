.class Lcom/android/settings/wifi/mobileap/WifiApWarning$36;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;->showFirstTimePoup(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .prologue
    .line 1516
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$36;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v6, 0x1

    .line 1518
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$36;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->nevershowagain:Z
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$2700(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1519
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$36;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$36;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "dontshowmemhsfirsttime"

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApWarning;->putBooleanSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$2800(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1521
    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isMetroPCS()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1522
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$36;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V
    invoke-static {v3, v6}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$2900(Lcom/android/settings/wifi/mobileap/WifiApWarning;Z)V

    .line 1523
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$36;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->showDialog(I)V

    .line 1551
    :goto_0
    return-void

    .line 1525
    :cond_1
    const/4 v1, 0x0

    .line 1528
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$36;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1529
    if-eqz v1, :cond_4

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 1530
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1531
    .local v2, "pickIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->isMetroPCS()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1532
    const-string v3, "helphub:section"

    const-string v4, "tethering_tmo"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1536
    :goto_1
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1537
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$36;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1549
    .end local v2    # "pickIntent":Landroid/content/Intent;
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$36;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    .line 1534
    .restart local v2    # "pickIntent":Landroid/content/Intent;
    :cond_3
    :try_start_1
    const-string v3, "helphub:section"

    const-string v4, "tethering_mtr"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1545
    .end local v2    # "pickIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1546
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "WifiApWarning"

    const-string v4, "Exception!! help NameNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$36;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V
    invoke-static {v3, v6}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$2900(Lcom/android/settings/wifi/mobileap/WifiApWarning;Z)V

    goto :goto_2

    .line 1539
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    if-eqz v1, :cond_2

    :try_start_2
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1540
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1541
    .restart local v2    # "pickIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1542
    const-string v3, "helphub:appid"

    const-string v4, "tethering"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1543
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$36;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method
