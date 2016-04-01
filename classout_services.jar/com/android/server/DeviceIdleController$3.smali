.class Lcom/android/server/DeviceIdleController$3;
.super Landroid/hardware/TriggerEventListener;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    .prologue
    .line 281
    iput-object p1, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    .line 283
    iget-object v1, p0, this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v1

    .line 284
    :try_start_3
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->significantMotionLocked()V

    .line 285
    monitor-exit v1

    .line 286
    return-void

    .line 285
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
