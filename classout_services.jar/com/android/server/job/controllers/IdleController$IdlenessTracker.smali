.class Lcom/android/server/job/controllers/IdleController$IdlenessTracker;
.super Landroid/content/BroadcastReceiver;
.source "IdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/IdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdlenessTracker"
.end annotation


# instance fields
.field private mAlarm:Landroid/app/AlarmManager;

.field mIdle:Z

.field private mIdleTriggerIntent:Landroid/app/PendingIntent;

.field mScreenOn:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/IdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/IdleController;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 113
    iput-object p1, p0, this$0:Lcom/android/server/job/controllers/IdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 114
    iget-object v1, p1, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, mAlarm:Landroid/app/AlarmManager;

    .line 116
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.task.controllers.IdleController.ACTION_TRIGGER_IDLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, mIdleTriggerIntent:Landroid/app/PendingIntent;

    .line 123
    iput-boolean v3, p0, mIdle:Z

    .line 124
    const/4 v1, 0x1

    iput-boolean v1, p0, mScreenOn:Z

    .line 125
    return-void
.end method


# virtual methods
.method public isIdle()Z
    .registers 2

    .prologue
    .line 128
    iget-boolean v0, p0, mIdle:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, "action":Ljava/lang/String;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 157
    :cond_16
    iput-boolean v1, p0, mScreenOn:Z

    .line 159
    iget-object v0, p0, mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, mIdleTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 160
    iget-boolean v0, p0, mIdle:Z

    if-eqz v0, :cond_2c

    .line 162
    iput-boolean v4, p0, mIdle:Z

    .line 163
    iget-object v0, p0, this$0:Lcom/android/server/job/controllers/IdleController;

    iget-boolean v1, p0, mIdle:Z

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/IdleController;->reportNewIdleState(Z)V

    .line 189
    :cond_2c
    :goto_2c
    return-void

    .line 165
    :cond_2d
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 170
    :cond_3d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 171
    .local v8, "nowElapsed":J
    const-wide/32 v0, 0x4100a0

    add-long v2, v8, v0

    .line 176
    .local v2, "when":J
    iput-boolean v4, p0, mScreenOn:Z

    .line 177
    iget-object v0, p0, mAlarm:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    const-wide/32 v4, 0x493e0

    iget-object v6, p0, mIdleTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    goto :goto_2c

    .line 179
    .end local v2    # "when":J
    .end local v8    # "nowElapsed":J
    :cond_54
    const-string v0, "com.android.server.task.controllers.IdleController.ACTION_TRIGGER_IDLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 181
    iget-boolean v0, p0, mIdle:Z

    if-nez v0, :cond_2c

    iget-boolean v0, p0, mScreenOn:Z

    if-nez v0, :cond_2c

    .line 185
    iput-boolean v1, p0, mIdle:Z

    .line 186
    iget-object v0, p0, this$0:Lcom/android/server/job/controllers/IdleController;

    iget-boolean v1, p0, mIdle:Z

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/IdleController;->reportNewIdleState(Z)V

    goto :goto_2c
.end method

.method public startTracking()V
    .registers 3

    .prologue
    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "com.android.server.task.controllers.IdleController.ACTION_TRIGGER_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, this$0:Lcom/android/server/job/controllers/IdleController;

    iget-object v1, v1, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    return-void
.end method
