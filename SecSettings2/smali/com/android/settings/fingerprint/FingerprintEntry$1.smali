.class Lcom/android/settings/fingerprint/FingerprintEntry$1;
.super Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;
.source "FingerprintEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEntry;->identifyFinger()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEntry;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 6
    .param p1, "evt"    # Lcom/samsung/android/fingerprint/FingerprintEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    move-object v2, p1

    .line 240
    .local v2, "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintEntry;->access$000(Lcom/android/settings/fingerprint/FingerprintEntry;)Landroid/content/Context;

    move-result-object v0

    .line 241
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEntry;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintEntry;->access$100(Lcom/android/settings/fingerprint/FingerprintEntry;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 242
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEntry;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintEntry;->access$100(Lcom/android/settings/fingerprint/FingerprintEntry;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintEntry$1$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/settings/fingerprint/FingerprintEntry$1$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry$1;Lcom/samsung/android/fingerprint/FingerprintEvent;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "FpstFingerprintEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFingerprintEvent: Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
