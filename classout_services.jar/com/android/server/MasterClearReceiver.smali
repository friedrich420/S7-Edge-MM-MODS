.class public Lcom/android/server/MasterClearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MasterClear"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 100
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 42
    const-string/jumbo v1, "google.com"

    const-string/jumbo v2, "from"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 43
    const-string v1, "MasterClear"

    const-string v2, "Ignoring master clear request -- not from trusted server."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_24
    return-void

    .line 48
    :cond_25
    const-string/jumbo v1, "shutdown"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 49
    .local v5, "shutdown":Z
    const-string v1, "android.intent.extra.REASON"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, "reason":Ljava/lang/String;
    const-string v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 53
    .local v7, "wipeExternalStorage":Z
    const-string v1, "MasterClear"

    const-string v2, "!!! FACTORY RESET !!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v1, "MasterClear"

    const-string v2, "!@ MasterClearReceiver::onReceive() !!! FACTORY RESET !!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Lcom/android/server/MasterClearReceiver$1;

    const-string v2, "Reboot"

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MasterClearReceiver$1;-><init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;ZLjava/lang/String;)V

    .line 92
    .local v0, "thr":Ljava/lang/Thread;
    if-eqz v7, :cond_5d

    .line 94
    new-instance v1, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Ljava/lang/Thread;)V

    new-array v2, v8, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_24

    .line 96
    :cond_5d
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_24
.end method
