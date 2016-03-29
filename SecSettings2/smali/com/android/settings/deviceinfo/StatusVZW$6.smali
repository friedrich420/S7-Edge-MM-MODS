.class Lcom/android/settings/deviceinfo/StatusVZW$6;
.super Landroid/content/BroadcastReceiver;
.source "StatusVZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StatusVZW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StatusVZW;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StatusVZW;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StatusVZW$6;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 422
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->CONNECTIVITY_INTENTS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1200()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW$6;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1300(Lcom/android/settings/deviceinfo/StatusVZW;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 426
    :cond_0
    return-void
.end method
