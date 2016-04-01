.class Lcom/android/server/DeviceIdleController$2;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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
    .line 265
    iput-object p1, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .prologue
    .line 267
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 273
    if-nez p1, :cond_b

    .line 274
    iget-object v1, p0, this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v1

    .line 275
    :try_start_5
    iget-object v0, p0, this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->updateDisplayLocked()V

    .line 276
    monitor-exit v1

    .line 278
    :cond_b
    return-void

    .line 276
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .prologue
    .line 270
    return-void
.end method
