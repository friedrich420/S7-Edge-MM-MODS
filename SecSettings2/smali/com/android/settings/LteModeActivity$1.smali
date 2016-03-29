.class Lcom/android/settings/LteModeActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "LteModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LteModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LteModeActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/LteModeActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/LteModeActivity$1;->this$0:Lcom/android/settings/LteModeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v1

    # setter for: Lcom/android/settings/LteModeActivity;->isAirplaneModeOn:Z
    invoke-static {v1}, Lcom/android/settings/LteModeActivity;->access$002(Z)Z

    .line 83
    const-string v1, "LteModeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive : airmode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/settings/LteModeActivity;->isAirplaneModeOn:Z
    invoke-static {}, Lcom/android/settings/LteModeActivity;->access$000()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    # getter for: Lcom/android/settings/LteModeActivity;->isAirplaneModeOn:Z
    invoke-static {}, Lcom/android/settings/LteModeActivity;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/android/settings/LteModeActivity$1;->this$0:Lcom/android/settings/LteModeActivity;

    const/4 v2, 0x0

    # invokes: Lcom/android/settings/LteModeActivity;->setSwitchChecked(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/LteModeActivity;->access$100(Lcom/android/settings/LteModeActivity;Z)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/android/settings/LteModeActivity$1;->this$0:Lcom/android/settings/LteModeActivity;

    # invokes: Lcom/android/settings/LteModeActivity;->updateUi()V
    invoke-static {v1}, Lcom/android/settings/LteModeActivity;->access$200(Lcom/android/settings/LteModeActivity;)V

    goto :goto_0
.end method
