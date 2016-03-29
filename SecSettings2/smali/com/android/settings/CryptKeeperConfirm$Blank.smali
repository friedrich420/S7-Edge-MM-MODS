.class public Lcom/android/settings/CryptKeeperConfirm$Blank;
.super Landroid/app/Activity;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blank"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm$Blank;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x400

    const/16 v8, 0x14

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v5, 0x7f04006f

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeperConfirm$Blank;->setContentView(I)V

    .line 83
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm$Blank;->finish()V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm$Blank;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 91
    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "a8ltezc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 92
    const-string v5, "display"

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeperConfirm$Blank;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 93
    .local v2, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->isWfdEngineRunning()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "checkCount":I
    const/16 v0, 0x14

    .line 96
    .local v0, "SLEEP_MAX_ATTEMPTS":I
    const-string v5, "CryptKeeper"

    const-string v6, "WiFi Display disconnect"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.server.display.wfd.DISCONNECT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeperConfirm$Blank;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    :cond_1
    const-wide/16 v6, 0xc8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    add-int/lit8 v1, v1, 0x1

    .line 106
    :goto_0
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->isWfdEngineRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    if-lt v1, v8, :cond_1

    .line 108
    :cond_2
    if-ne v1, v8, :cond_3

    .line 109
    const-string v5, "CryptKeeper"

    const-string v6, "WiFi Display disconnection fail !!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm$Blank;->finish()V

    .line 167
    .end local v0    # "SLEEP_MAX_ATTEMPTS":I
    .end local v1    # "checkCount":I
    .end local v2    # "displayManager":Landroid/hardware/display/DisplayManager;
    :goto_1
    return-void

    .line 103
    .restart local v0    # "SLEEP_MAX_ATTEMPTS":I
    .restart local v1    # "checkCount":I
    .restart local v2    # "displayManager":Landroid/hardware/display/DisplayManager;
    :catch_0
    move-exception v3

    .line 104
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v0    # "SLEEP_MAX_ATTEMPTS":I
    .end local v1    # "checkCount":I
    .end local v2    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const-string v5, "statusbar"

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeperConfirm$Blank;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .line 117
    .local v4, "sbm":Landroid/app/StatusBarManager;
    const/high16 v5, 0x3770000

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 129
    iget-object v5, p0, Lcom/android/settings/CryptKeeperConfirm$Blank;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/settings/CryptKeeperConfirm$Blank$1;

    invoke-direct {v6, p0}, Lcom/android/settings/CryptKeeperConfirm$Blank$1;-><init>(Lcom/android/settings/CryptKeeperConfirm$Blank;)V

    const-wide/16 v8, 0x2bc

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
