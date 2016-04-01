.class Lcom/android/server/fingerprint/FingerprintService$1;
.super Landroid/os/Handler;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 135
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_5a

    .line 149
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_1f
    :goto_1f
    return-void

    .line 137
    :pswitch_20
    iget-object v1, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->handleUserSwitching(I)V

    goto :goto_1f

    .line 140
    :pswitch_28
    iget-object v1, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v0

    .line 141
    .local v0, "removedUser":I
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 142
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removed User = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_4f
    if-eqz v0, :cond_1f

    .line 145
    iget-object v1, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v2, -0x1

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->removeFinger(II)I
    invoke-static {v1, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->access$100(Lcom/android/server/fingerprint/FingerprintService;II)I

    goto :goto_1f

    .line 135
    :pswitch_data_5a
    .packed-switch 0xa
        :pswitch_20
        :pswitch_28
    .end packed-switch
.end method
