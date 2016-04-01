.class final Lcom/android/server/BatteryService$BatteryListener;
.super Landroid/os/IBatteryPropertiesListener$Stub;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .prologue
    .line 2184
    iput-object p1, p0, this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/IBatteryPropertiesListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/BatteryService;
    .param p2, "x1"    # Lcom/android/server/BatteryService$1;

    .prologue
    .line 2184
    invoke-direct {p0, p1}, <init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public batteryPropertiesChanged(Landroid/os/BatteryProperties;)V
    .registers 6
    .param p1, "props"    # Landroid/os/BatteryProperties;

    .prologue
    .line 2188
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!@BatteryListener : batteryPropertiesChanged!"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2192
    .local v0, "identity":J
    :try_start_d
    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->update(Landroid/os/BatteryProperties;)V
    invoke-static {v2, p1}, Lcom/android/server/BatteryService;->access$4400(Lcom/android/server/BatteryService;Landroid/os/BatteryProperties;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_16

    .line 2194
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2196
    return-void

    .line 2194
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
