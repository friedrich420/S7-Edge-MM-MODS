.class Lcom/android/internal/app/ChooserActivity$1;
.super Landroid/os/Handler;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity;)V
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 105
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_9c

    .line 138
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 140
    :cond_8
    :goto_8
    return-void

    .line 108
    :pswitch_9
    iget-object v1, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 109
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    .line 110
    .local v0, "sri":Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    iget-object v1, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->access$000(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 111
    const-string v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChooserTargetServiceConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned after being removed from active connections."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Have you considered returning results faster?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 116
    :cond_4a
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    if-eqz v1, :cond_5b

    .line 117
    iget-object v1, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->access$100(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->addServiceResults(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;)V

    .line 120
    :cond_5b
    iget-object v1, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 121
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->destroy()V

    .line 122
    iget-object v1, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->access$000(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->access$000(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 124
    iget-object v1, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->access$200(Lcom/android/internal/app/ChooserActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v1, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    goto/16 :goto_8

    .line 133
    .end local v0    # "sri":Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    :pswitch_8f
    iget-object v1, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->unbindRemainingServices()V

    .line 134
    iget-object v1, p0, this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    goto/16 :goto_8

    .line 105
    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8f
    .end packed-switch
.end method
