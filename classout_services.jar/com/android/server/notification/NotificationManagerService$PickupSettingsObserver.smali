.class Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickupSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 4383
    iput-object p1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4384
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4385
    return-void
.end method


# virtual methods
.method observe()V
    .registers 4

    .prologue
    .line 4388
    iget-object v1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4389
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "motion_pick_up"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4391
    invoke-virtual {p0}, update()V

    .line 4392
    return-void
.end method

.method public onChange(Z)V
    .registers 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 4396
    invoke-virtual {p0}, update()V

    .line 4397
    return-void
.end method

.method public update()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 4400
    iget-object v1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "motion_pick_up"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_35

    .line 4402
    .local v0, "isON":Z
    :goto_15
    iget-object v1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPickupPlayer:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->setPickupMotionEnabled(Z)V

    .line 4403
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PickupSettingsObserver - update():PickUP = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4404
    return-void

    .line 4400
    .end local v0    # "isON":Z
    :cond_35
    const/4 v0, 0x0

    goto :goto_15
.end method
