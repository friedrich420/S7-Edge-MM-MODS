.class Lcom/android/server/AlarmManagerService$FactoryOnOffControlReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FactoryOnOffControlReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 4

    .prologue
    .line 3580
    iput-object p1, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3581
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3582
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.START_FACTORY_TEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3583
    const-string v1, "android.intent.action.STOP_FACTORY_TEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3584
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3585
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3589
    iget-object v1, p0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3590
    :try_start_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3591
    .local v0, "action":Ljava/lang/String;
    const-string v1, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FactoryOnOffControlReceiver action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    const-string v1, "android.intent.action.START_FACTORY_TEST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 3593
    const/4 v1, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->FACTORY_ON:I
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1502(I)I

    .line 3597
    :cond_2d
    :goto_2d
    monitor-exit v2

    .line 3598
    return-void

    .line 3594
    :cond_2f
    const-string v1, "android.intent.action.STOP_FACTORY_TEST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 3595
    const/4 v1, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->FACTORY_ON:I
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1502(I)I

    goto :goto_2d

    .line 3597
    .end local v0    # "action":Ljava/lang/String;
    :catchall_3c
    move-exception v1

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_3c

    throw v1
.end method
