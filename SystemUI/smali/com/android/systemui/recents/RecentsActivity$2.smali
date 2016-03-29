.class Lcom/android/systemui/recents/RecentsActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$2;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 400
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 402
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$2;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v3, "Screen off broadcast is received"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$2;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isScreenOff:Z

    .line 409
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableExitAnimToApp:Z

    if-eqz v2, :cond_0

    .line 410
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$2;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsActivity;->clearDeferSurfaceDestroyFlag()V

    .line 414
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$2;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)Z

    .line 421
    :cond_1
    :goto_0
    return-void

    .line 415
    :cond_2
    const-string v2, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 418
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$2;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$2;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v1, p1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getOrBindSearchAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/recents/RecentsActivity;->mSearchWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 419
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$2;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsActivity;->refreshSearchWidgetView()V

    goto :goto_0
.end method
