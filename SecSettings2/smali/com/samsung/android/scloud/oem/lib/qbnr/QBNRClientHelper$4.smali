.class Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$4;
.super Ljava/lang/Object;
.source "QBNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$SyncServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->setHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$4;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x0

    .line 205
    const-string v1, "QBNRClientHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "212, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 206
    const-string v5, ", is_finished : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$4;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsFinished:Z
    invoke-static {v5}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$8(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 207
    const-string v5, ", is_success : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$4;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsSuccess:Z
    invoke-static {v5}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$9(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 208
    const-string v5, ", proc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$4;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcNow:J
    invoke-static {v5}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$10(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 209
    const-string v5, ", total : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$4;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcTotal:J
    invoke-static {v5}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$11(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-static {v1, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "is_finished"

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$4;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsFinished:Z
    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$8(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 215
    const-string v1, "is_success"

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$4;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsSuccess:Z
    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$9(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$4;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsFinished:Z
    invoke-static {v1}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$8(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    const-string v1, "progress"

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$4;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcTotal:J
    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$11(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    :goto_0
    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    :cond_0
    return-object v0

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$4;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcNow:J
    invoke-static {v2}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$10(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)J

    move-result-wide v2

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$4;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcTotal:J
    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->access$11(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)J

    move-result-wide v4

    div-long/2addr v2, v4

    goto :goto_0
.end method
