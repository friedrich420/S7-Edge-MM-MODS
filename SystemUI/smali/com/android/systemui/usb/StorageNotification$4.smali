.class Lcom/android/systemui/usb/StorageNotification$4;
.super Landroid/content/BroadcastReceiver;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v9, 0x53505542

    const/4 v8, 0x3

    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "action":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    # getter for: Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v6}, Lcom/android/systemui/usb/StorageNotification;->access$100(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/StorageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v5

    .line 143
    .local v5, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 145
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 146
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    if-nez v6, :cond_0

    .line 147
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 148
    # setter for: Lcom/android/systemui/usb/StorageNotification;->sdVolInfo:Landroid/os/storage/VolumeInfo;
    invoke-static {v4}, Lcom/android/systemui/usb/StorageNotification;->access$402(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    .line 154
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    # getter for: Lcom/android/systemui/usb/StorageNotification;->sdVolInfo:Landroid/os/storage/VolumeInfo;
    invoke-static {}, Lcom/android/systemui/usb/StorageNotification;->access$400()Landroid/os/storage/VolumeInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 155
    const-string v6, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 156
    const-string v6, "reason"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 160
    .local v3, "reason":I
    if-ne v3, v8, :cond_3

    .line 161
    const-string v6, "StorageNotification"

    const-string v7, "mUPSMReceiver UPSM is ON"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    # getter for: Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/android/systemui/usb/StorageNotification;->access$200(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/NotificationManager;

    move-result-object v6

    # getter for: Lcom/android/systemui/usb/StorageNotification;->sdVolInfo:Landroid/os/storage/VolumeInfo;
    invoke-static {}, Lcom/android/systemui/usb/StorageNotification;->access$400()Landroid/os/storage/VolumeInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v9, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 179
    .end local v3    # "reason":I
    :cond_2
    :goto_0
    return-void

    .line 164
    .restart local v3    # "reason":I
    :cond_3
    const/4 v6, 0x5

    if-ne v3, v6, :cond_5

    .line 165
    const-string v6, "StorageNotification"

    const-string v7, "mUPSMReceiver UPSM is OFF"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    # getter for: Lcom/android/systemui/usb/StorageNotification;->sdVolInfo:Landroid/os/storage/VolumeInfo;
    invoke-static {}, Lcom/android/systemui/usb/StorageNotification;->access$400()Landroid/os/storage/VolumeInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    # getter for: Lcom/android/systemui/usb/StorageNotification;->sdVolInfo:Landroid/os/storage/VolumeInfo;
    invoke-static {}, Lcom/android/systemui/usb/StorageNotification;->access$400()Landroid/os/storage/VolumeInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 168
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    # getter for: Lcom/android/systemui/usb/StorageNotification;->sdVolInfo:Landroid/os/storage/VolumeInfo;
    invoke-static {}, Lcom/android/systemui/usb/StorageNotification;->access$400()Landroid/os/storage/VolumeInfo;

    move-result-object v7

    # invokes: Lcom/android/systemui/usb/StorageNotification;->onVolumeMounted(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    invoke-static {v6, v7}, Lcom/android/systemui/usb/StorageNotification;->access$500(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v2

    .line 169
    .local v2, "notif":Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    # getter for: Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/android/systemui/usb/StorageNotification;->access$200(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/NotificationManager;

    move-result-object v6

    # getter for: Lcom/android/systemui/usb/StorageNotification;->sdVolInfo:Landroid/os/storage/VolumeInfo;
    invoke-static {}, Lcom/android/systemui/usb/StorageNotification;->access$400()Landroid/os/storage/VolumeInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v9, v2, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 173
    .end local v2    # "notif":Landroid/app/Notification;
    :cond_5
    const-string v6, "StorageNotification"

    const-string v7, "UPSM state is unknown."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
