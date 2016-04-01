.class Lcom/android/server/UiModeManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-virtual {p0}, getResultCode()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    .line 135
    :goto_8
    return-void

    .line 130
    :cond_9
    const-string/jumbo v2, "enableFlags"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 131
    .local v1, "enableFlags":I
    const-string/jumbo v2, "disableFlags"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 132
    .local v0, "disableFlags":I
    iget-object v2, p0, this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 133
    :try_start_1c
    iget-object v2, p0, this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/UiModeManagerService;->updateAfterBroadcastLocked(Ljava/lang/String;II)V
    invoke-static {v2, v4, v1, v0}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V

    .line 134
    monitor-exit v3

    goto :goto_8

    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_27

    throw v2
.end method
