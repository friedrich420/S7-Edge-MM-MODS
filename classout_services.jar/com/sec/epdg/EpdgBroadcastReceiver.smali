.class public abstract Lcom/sec/epdg/EpdgBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EpdgBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgBroadcastReceiver$EpdgBroadcastRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/EpdgBroadcastReceiver$EpdgBroadcastRunnable;

    invoke-virtual {p0, p1, p2}, processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/EpdgBroadcastReceiver$EpdgBroadcastRunnable;-><init>(Lcom/sec/epdg/EpdgBroadcastReceiver;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    return-void
.end method

.method public abstract processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
.end method

.method public abstract processSlowPath(Ljava/lang/Object;)V
.end method
