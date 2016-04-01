.class Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;
.super Landroid/os/Handler;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RollbackRefreshHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 922
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 923
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 924
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 928
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    .line 951
    :goto_5
    return-void

    .line 932
    :pswitch_6
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->execute(II)V

    goto :goto_5

    .line 940
    :pswitch_14
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->initPendingActionList()V

    goto :goto_5

    .line 948
    :pswitch_1e
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->removeUserIdFromPendingList(I)Z

    goto :goto_5

    .line 928
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_14
        :pswitch_1e
    .end packed-switch
.end method
