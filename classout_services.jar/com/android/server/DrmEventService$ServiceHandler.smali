.class final Lcom/android/server/DrmEventService$ServiceHandler;
.super Landroid/os/Handler;
.source "DrmEventService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DrmEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DrmEventService;


# direct methods
.method public constructor <init>(Lcom/android/server/DrmEventService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 124
    iput-object p1, p0, this$0:Lcom/android/server/DrmEventService;

    .line 125
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 126
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 132
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_b

    const-string v2, "DrmEventService"

    const-string v3, "DrmEventService : handleMessage msg received"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_b
    if-eqz p1, :cond_51

    .line 135
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 136
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_6a

    .line 137
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "action":Ljava/lang/String;
    const-string v2, "DrmEventService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action event :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    if-eqz v0, :cond_5e

    .line 140
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 141
    iget-object v2, p0, this$0:Lcom/android/server/DrmEventService;

    # getter for: Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z
    invoke-static {v2}, Lcom/android/server/DrmEventService;->access$000(Lcom/android/server/DrmEventService;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 143
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_4c

    const-string v2, "DrmEventService"

    const-string v3, "Registering broadcast receivers from handlemessage"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_4c
    iget-object v2, p0, this$0:Lcom/android/server/DrmEventService;

    # invokes: Lcom/android/server/DrmEventService;->registerReceiever()V
    invoke-static {v2}, Lcom/android/server/DrmEventService;->access$100(Lcom/android/server/DrmEventService;)V

    .line 156
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_51
    :goto_51
    return-void

    .line 146
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_52
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_51

    const-string v2, "DrmEventService"

    const-string v3, " already registered .. not doing again in handlemessage "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 150
    :cond_5e
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_51

    const-string v2, "DrmEventService"

    const-string v3, "Intent Action is Null :"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 153
    .end local v0    # "action":Ljava/lang/String;
    :cond_6a
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_51

    const-string v2, "DrmEventService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent is Null : msg.what :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51
.end method
