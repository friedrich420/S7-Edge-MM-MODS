.class Lcom/android/systemui/statusbar/policy/MinitBattery$1;
.super Landroid/content/BroadcastReceiver;
.source "MinitBattery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MinitBattery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MinitBattery;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MinitBattery;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery$1;->this$0:Lcom/android/systemui/statusbar/policy/MinitBattery;

    move-object v2, v0

    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery$1;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MinitBattery$1;->this$0:Lcom/android/systemui/statusbar/policy/MinitBattery;

    move-object v4, v2

    const-string v5, "level"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/MinitBattery;->access$002(Lcom/android/systemui/statusbar/policy/MinitBattery;I)I

    move-result v3

    .line 57
    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MinitBattery$1;->this$0:Lcom/android/systemui/statusbar/policy/MinitBattery;

    move-object v4, v2

    const-string v5, "status"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/MinitBattery;->access$102(Lcom/android/systemui/statusbar/policy/MinitBattery;I)I

    move-result v3

    .line 64
    :cond_0
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MinitBattery$1;->this$0:Lcom/android/systemui/statusbar/policy/MinitBattery;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MinitBattery;->access$300(Lcom/android/systemui/statusbar/policy/MinitBattery;)V

    .line 65
    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MinitBattery$1;->this$0:Lcom/android/systemui/statusbar/policy/MinitBattery;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MinitBattery;->access$400(Lcom/android/systemui/statusbar/policy/MinitBattery;)V

    .line 66
    return-void

    .line 59
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.three.minit.BATTERY_TYPE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MinitBattery$1;->this$0:Lcom/android/systemui/statusbar/policy/MinitBattery;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/MinitBattery;->access$202(Lcom/android/systemui/statusbar/policy/MinitBattery;I)I

    move-result v3

    goto :goto_0
.end method
