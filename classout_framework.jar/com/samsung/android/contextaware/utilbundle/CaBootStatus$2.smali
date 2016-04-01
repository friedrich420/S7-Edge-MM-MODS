.class Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$2;
.super Landroid/os/Handler;
.source "CaBootStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1001

    if-ne v0, v1, :cond_c

    .line 149
    const-string v0, "context is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 161
    :cond_b
    :goto_b
    return-void

    .line 150
    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_18

    .line 151
    const-string v0, "intent is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_b

    .line 152
    :cond_18
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1003

    if-ne v0, v1, :cond_b

    .line 153
    const-string v0, "Boot Complete"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->access$100(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 156
    iget-object v0, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->access$100(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->access$200(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    :cond_3a
    iget-object v0, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->mBootComplete:Z
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->access$302(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;Z)Z

    .line 159
    iget-object v0, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->notifyObservers()V
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->access$400(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)V

    goto :goto_b
.end method
