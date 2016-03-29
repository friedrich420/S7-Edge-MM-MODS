.class Lcom/android/systemui/settings/BrightnessController$2;
.super Landroid/content/BroadcastReceiver;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 240
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    const-string v4, "level"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 243
    .local v2, "batteryLevel":I
    const-string v4, "status"

    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 245
    .local v1, "battStatus":I
    const/4 v4, 0x5

    if-gt v2, v4, :cond_1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    .line 246
    const-string v4, "StatusBar.BrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v3, 0x0

    .line 251
    .local v3, "brightnessStatus":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # getter for: Lcom/android/systemui/settings/BrightnessController;->mBrightnessStatus:Z
    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessController;->access$800(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 252
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # setter for: Lcom/android/systemui/settings/BrightnessController;->mBrightnessStatus:Z
    invoke-static {v4, v3}, Lcom/android/systemui/settings/BrightnessController;->access$802(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 253
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # getter for: Lcom/android/systemui/settings/BrightnessController;->mListening:Z
    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessController;->access$900(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # getter for: Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessController;->access$1000(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 254
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # getter for: Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;
    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessController;->access$1000(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    # getter for: Lcom/android/systemui/settings/BrightnessController;->mBrightnessStatus:Z
    invoke-static {v5}, Lcom/android/systemui/settings/BrightnessController;->access$800(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/settings/ToggleSlider;->setEnable(Z)V

    .line 257
    .end local v1    # "battStatus":I
    .end local v2    # "batteryLevel":I
    .end local v3    # "brightnessStatus":Z
    :cond_0
    return-void

    .line 249
    .restart local v1    # "battStatus":I
    .restart local v2    # "batteryLevel":I
    :cond_1
    const/4 v3, 0x1

    .restart local v3    # "brightnessStatus":Z
    goto :goto_0
.end method
