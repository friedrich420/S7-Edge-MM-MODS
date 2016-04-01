.class Lcom/android/server/IcccManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "IcccManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IcccManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/IcccManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/IcccManagerService;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, this$0:Lcom/android/server/IcccManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 58
    const-string/jumbo v0, "status"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SysScope scanning finished"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_51

    .line 59
    const-string v0, "Result"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    # setter for: Lcom/android/server/IcccManagerService;->mSysScopeResult:I
    invoke-static {v0}, Lcom/android/server/IcccManagerService;->access$002(I)I

    .line 60
    iget-object v0, p0, this$0:Lcom/android/server/IcccManagerService;

    iget-object v0, v0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSysScopeResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/IcccManagerService;->mSysScopeResult:I
    invoke-static {}, Lcom/android/server/IcccManagerService;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, this$0:Lcom/android/server/IcccManagerService;

    # invokes: Lcom/android/server/IcccManagerService;->enforcePermission()Z
    invoke-static {v0}, Lcom/android/server/IcccManagerService;->access$100(Lcom/android/server/IcccManagerService;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 62
    iget-object v0, p0, this$0:Lcom/android/server/IcccManagerService;

    # invokes: Lcom/android/server/IcccManagerService;->setSysScopeField()V
    invoke-static {v0}, Lcom/android/server/IcccManagerService;->access$200(Lcom/android/server/IcccManagerService;)V

    .line 68
    :cond_51
    :goto_51
    return-void

    .line 64
    :cond_52
    iget-object v0, p0, this$0:Lcom/android/server/IcccManagerService;

    iget-object v0, v0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Not System UID. Only system UID caller can change status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51
.end method
