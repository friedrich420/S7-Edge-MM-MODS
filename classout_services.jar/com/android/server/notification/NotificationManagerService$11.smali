.class Lcom/android/server/notification/NotificationManagerService$11;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .prologue
    .line 2837
    iput-object p1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2839
    const-string v0, "NotificationService"

    const-string v1, "binderDied()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    iget-object v0, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5700(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2841
    iget-object v0, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$5702(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2843
    iget-object v0, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2844
    iget-object v0, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 2846
    :cond_34
    iget-object v0, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v0, v2}, Lcom/android/server/notification/NotificationManagerService;->access$402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 2847
    return-void
.end method
