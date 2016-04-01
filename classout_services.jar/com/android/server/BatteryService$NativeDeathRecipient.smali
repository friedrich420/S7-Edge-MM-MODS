.class Lcom/android/server/BatteryService$NativeDeathRecipient;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeDeathRecipient"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Landroid/os/IBinder;)V
    .registers 5
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 676
    iput-object p1, p0, this$0:Lcom/android/server/BatteryService;

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    iput-object p2, p0, binder:Landroid/os/IBinder;

    .line 680
    const/4 v1, 0x0

    :try_start_8
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 684
    :goto_b
    return-void

    .line 681
    :catch_c
    move-exception v0

    .line 682
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, binderDied()V

    goto :goto_b
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 686
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeDeathRecipient: healthd has been died!"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v0, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/BatteryService$NativeDeathRecipient$1;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$NativeDeathRecipient$1;-><init>(Lcom/android/server/BatteryService$NativeDeathRecipient;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 707
    return-void
.end method
