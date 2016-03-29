.class Lcom/android/settings/wifi/mobileap/WifiApWarning$6;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;->onCreate(Landroid/os/Bundle;)V
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
    .line 410
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x3

    const v8, 0x7f0e052d

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 412
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v2

    if-ne v2, v7, :cond_5

    .line 413
    const-string v2, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$900(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v2

    if-nez v2, :cond_4

    .line 415
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$800(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 416
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_0

    .line 417
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "SAMSUNG_HOTSPOT"

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1002(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 418
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 419
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "HOTSPOT_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 420
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 421
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 429
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    const/16 v3, 0xb

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V
    invoke-static {v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1100(Lcom/android/settings/wifi/mobileap/WifiApWarning;I)V

    .line 430
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 431
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 493
    :cond_2
    :goto_1
    return-void

    .line 423
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 426
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 433
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    .line 434
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    const/16 v3, 0xb

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V
    invoke-static {v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1100(Lcom/android/settings/wifi/mobileap/WifiApWarning;I)V

    .line 435
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 436
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_1

    .line 438
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$900(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v2

    if-ne v2, v4, :cond_a

    .line 439
    const-string v2, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 440
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e052f

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 442
    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 443
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiIBSSEnabled(Z)Z

    .line 446
    :cond_8
    const-wide/16 v2, 0x258

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_2
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 451
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 453
    :cond_9
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto/16 :goto_1

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 455
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_a
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$900(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v2

    if-ne v2, v4, :cond_d

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v2

    if-nez v2, :cond_d

    .line 456
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 457
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 460
    :cond_b
    const-wide/16 v2, 0x258

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 464
    :goto_3
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 465
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/net/wifi/WifiManager;->setWifiIBSSEnabled(Z)Z

    .line 467
    :cond_c
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto/16 :goto_1

    .line 461
    :catch_1
    move-exception v0

    .line 462
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 469
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_d
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$900(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 470
    const-string v2, "VZW"

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 471
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$800(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 472
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_e

    .line 473
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "SAMSUNG_HOTSPOT"

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1002(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 474
    :cond_e
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 475
    .restart local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "USBTETHER_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 476
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 479
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_f
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/ConnectivityManager;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 480
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 483
    :cond_10
    const-wide/16 v2, 0x258

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 487
    :goto_4
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 488
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 490
    :cond_11
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto/16 :goto_1

    .line 484
    :catch_2
    move-exception v0

    .line 485
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4
.end method
