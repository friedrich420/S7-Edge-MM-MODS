.class Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$3;
.super Ljava/lang/Object;
.source "SimLockStatus.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$3;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 282
    const-string v1, "SimLockStatus"

    const-string v2, "Download policy file"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$3;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    # getter for: Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->access$100(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->getInstance(Landroid/content/Context;)Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    move-result-object v0

    .line 284
    .local v0, "samsungRilConnector":Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$3;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    # getter for: Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimLockPolicyBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->access$200(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->setBlob([B)V

    .line 285
    return-void
.end method
