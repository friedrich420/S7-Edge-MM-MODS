.class Lcom/android/server/appwidget/AppWidgetServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/16 v5, -0x2710

    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$000()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 167
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received broadcast: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_25
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 171
    iget-object v2, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->onConfigurationChanged()V
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    .line 194
    :cond_32
    :goto_32
    return-void

    .line 172
    :cond_33
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 173
    iget-object v2, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->onUserStarted(I)V
    invoke-static {v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    goto :goto_32

    .line 175
    :cond_47
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 176
    iget-object v2, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->onUserStopped(I)V
    invoke-static {v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$300(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    goto :goto_32

    .line 178
    :cond_5b
    const-string v2, "com.sec.knox.FIRST_SWITCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 179
    iget-object v2, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->onKNOXStarted(I)V
    invoke-static {v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$400(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    goto :goto_32

    .line 181
    :cond_6f
    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 183
    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->EMERGENCY_MODE_ENABLED:Z
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$500()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 184
    const-string/jumbo v2, "reason"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 185
    .local v1, "reason":I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_32

    .line 186
    iget-object v2, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->onEmergencyDisabled(I)V
    invoke-static {v2, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$600(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    goto :goto_32

    .line 191
    .end local v1    # "reason":I
    :cond_8d
    iget-object v2, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->onPackageBroadcastReceived(Landroid/content/Intent;I)V
    invoke-static {v2, p2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$700(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    goto :goto_32
.end method
