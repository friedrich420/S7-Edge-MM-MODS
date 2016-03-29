.class Lcom/android/settings/deviceinfo/StatusVZW$2;
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
    .line 346
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StatusVZW$2;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 349
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 352
    const-string v1, "status"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SysScope scanning finished"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW$2;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    const-string v2, "Result"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I
    invoke-static {v1, v2}, Lcom/android/settings/deviceinfo/StatusVZW;->access$502(Lcom/android/settings/deviceinfo/StatusVZW;I)I

    .line 354
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusVZW$2;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # invokes: Lcom/android/settings/deviceinfo/StatusVZW;->changeSysScopeStatus()V
    invoke-static {v1}, Lcom/android/settings/deviceinfo/StatusVZW;->access$600(Lcom/android/settings/deviceinfo/StatusVZW;)V

    .line 357
    :cond_0
    return-void
.end method
