.class Lcom/android/server/notification/TwScheduleConditionProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "TwScheduleConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/TwScheduleConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/TwScheduleConditionProvider;


# direct methods
.method constructor <init>(Lcom/android/server/notification/TwScheduleConditionProvider;)V
    .registers 2

    .prologue
    .line 227
    iput-object p1, p0, this$0:Lcom/android/server/notification/TwScheduleConditionProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 230
    # getter for: Lcom/android/server/notification/TwScheduleConditionProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/TwScheduleConditionProvider;->access$000()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "ConditionProviders.SCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_23
    iget-object v0, p0, this$0:Lcom/android/server/notification/TwScheduleConditionProvider;

    # invokes: Lcom/android/server/notification/TwScheduleConditionProvider;->evaluateSubscriptions()V
    invoke-static {v0}, Lcom/android/server/notification/TwScheduleConditionProvider;->access$100(Lcom/android/server/notification/TwScheduleConditionProvider;)V

    .line 232
    return-void
.end method