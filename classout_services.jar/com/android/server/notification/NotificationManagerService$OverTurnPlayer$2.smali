.class Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$2;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->registerObs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 4569
    iput-object p1, p0, this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 4572
    iget-object v0, p0, this$1:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    # invokes: Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->update()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->access$8000(Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;)V

    .line 4573
    return-void
.end method
