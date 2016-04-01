.class abstract Lcom/kddi/android/internal/pdg/PdgAccessChecker;
.super Ljava/lang/Object;
.source "PdgAccessChecker.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkPrivacy(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dataType"    # I

    .prologue
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boolean checkPrivacy( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 18
    const/4 v1, 0x1

    .line 20
    .local v1, "result":Z
    packed-switch p2, :pswitch_data_50

    .line 28
    const-string v2, "boolean checkPrivacy() / case default"

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 31
    :goto_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boolean checkPrivacy() end / return = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 32
    return v1

    .line 24
    :pswitch_46
    new-instance v0, Lcom/kddi/android/internal/pdg/PdgAccessController;

    invoke-direct {v0, p0, p1}, Lcom/kddi/android/internal/pdg/PdgAccessController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    .local v0, "pdgac":Lcom/kddi/android/internal/pdg/PdgAccessController;
    invoke-virtual {v0, p2}, Lcom/kddi/android/internal/pdg/PdgAccessController;->getPrivacy(I)Z

    move-result v1

    .line 26
    goto :goto_2f

    .line 20
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_46
        :pswitch_46
        :pswitch_46
    .end packed-switch
.end method
