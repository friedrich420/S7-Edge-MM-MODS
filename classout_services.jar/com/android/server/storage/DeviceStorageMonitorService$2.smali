.class Lcom/android/server/storage/DeviceStorageMonitorService$2;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .registers 2

    .prologue
    .line 355
    iput-object p1, p0, this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 357
    iget-object v0, p0, this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-boolean v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 358
    iget-object v0, p0, this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->sendNotification()V
    invoke-static {v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$100(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 360
    :cond_c
    return-void
.end method
