.class final Lcom/android/systemui/volume/VolumeUI$RestorationNotification;
.super Ljava/lang/Object;
.source "VolumeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RestorationNotification"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeUI;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/VolumeUI;
    .param p2, "x1"    # Lcom/android/systemui/volume/VolumeUI$1;

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$1000(Lcom/android/systemui/volume/VolumeUI;)Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x7f0e0058

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 221
    return-void
.end method

.method public show()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 224
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mVolumeControllerService:Lcom/android/systemui/statusbar/ServiceMonitor;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeUI;->access$300(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/statusbar/ServiceMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ServiceMonitor;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 225
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 226
    const-string v2, "VolumeUI"

    const-string v3, "Not showing restoration notification, component not active"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    return-void

    .line 229
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.systemui.vui.DISABLE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "component"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 231
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeUI;->access$1000(Lcom/android/systemui/volume/VolumeUI;)Landroid/app/NotificationManager;

    move-result-object v2

    const v3, 0x7f0e0058

    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v5, v5, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f020239

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v5, v5, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0d036c

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # invokes: Lcom/android/systemui/volume/VolumeUI;->getAppLabel(Landroid/content/ComponentName;)Ljava/lang/String;
    invoke-static {v8, v0}, Lcom/android/systemui/volume/VolumeUI;->access$1100(Lcom/android/systemui/volume/VolumeUI;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v5, v5, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0d036d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v5, v5, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const/high16 v6, 0x8000000

    invoke-static {v5, v9, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v5, v5, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const v6, 0x1060059

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method
