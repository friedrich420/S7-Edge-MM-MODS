.class Lcom/android/server/SecSCService$3;
.super Landroid/content/BroadcastReceiver;
.source "SecSCService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecSCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecSCService;


# direct methods
.method constructor <init>(Lcom/android/server/SecSCService;)V
    .registers 2

    .prologue
    .line 243
    iput-object p1, p0, this$0:Lcom/android/server/SecSCService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 246
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 260
    :cond_6
    :goto_6
    return-void

    .line 250
    :cond_7
    # invokes: Lcom/android/server/SecSCService;->SecSC_deleteFile()V
    invoke-static {}, Lcom/android/server/SecSCService;->access$400()V

    .line 251
    iget-object v2, p0, this$0:Lcom/android/server/SecSCService;

    # getter for: Lcom/android/server/SecSCService;->mServiceHandler:Lcom/android/server/SecSCService$ServiceHandler;
    invoke-static {v2}, Lcom/android/server/SecSCService;->access$500(Lcom/android/server/SecSCService;)Lcom/android/server/SecSCService$ServiceHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SecSCService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 252
    .local v1, "msg":Landroid/os/Message;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 253
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 259
    :goto_1f
    iget-object v2, p0, this$0:Lcom/android/server/SecSCService;

    # getter for: Lcom/android/server/SecSCService;->mServiceHandler:Lcom/android/server/SecSCService$ServiceHandler;
    invoke-static {v2}, Lcom/android/server/SecSCService;->access$500(Lcom/android/server/SecSCService;)Lcom/android/server/SecSCService$ServiceHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/SecSCService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 254
    :cond_29
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1f
.end method
