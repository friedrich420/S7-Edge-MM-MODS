.class public Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintClientSpecBuilder"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 996
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, mBundle:Landroid/os/Bundle;

    .line 999
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    .line 1000
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    const-string v1, "appName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    :cond_19
    return-void
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 1083
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public demandExtraEvent(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .registers 4
    .param p1, "demanded"    # Z

    .prologue
    .line 1028
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    const-string v1, "demandExtraEvent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1029
    return-object p0
.end method

.method public demandFingerRemovedEvent(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .registers 4
    .param p1, "demanded"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1023
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    const-string v1, "demandExtraEvent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1024
    return-object p0
.end method

.method public demandGestureEvent(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .registers 4
    .param p1, "demanded"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1017
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    const-string v1, "demandExtraEvent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1018
    return-object p0
.end method

.method public demandNavigationEvent(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .registers 4
    .param p1, "demanded"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1011
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    const-string v1, "demandExtraEvent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1012
    return-object p0
.end method

.method public setAccuracy(F)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .registers 4
    .param p1, "accuracy"    # F

    .prologue
    .line 1067
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "request_accuracy"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1068
    return-object p0
.end method

.method public setAllowFingers([I)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .registers 4
    .param p1, "allowFingers"    # [I

    .prologue
    .line 1060
    if-eqz p1, :cond_d

    array-length v0, p1

    if-lez v0, :cond_d

    .line 1061
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "request_template_index_list"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1063
    :cond_d
    return-object p0
.end method

.method public setBackground(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .registers 4
    .param p1, "background"    # Z

    .prologue
    .line 1005
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    const-string v1, "background"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1006
    return-object p0
.end method

.method public setExtraSpec(Landroid/os/Bundle;)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .registers 3
    .param p1, "spec"    # Landroid/os/Bundle;

    .prologue
    .line 1078
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1079
    return-object p0
.end method

.method public setOwnName(Ljava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .registers 4
    .param p1, "ownName"    # Ljava/lang/String;

    .prologue
    .line 1053
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 1054
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "ownName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    :cond_10
    return-object p0
.end method

.method public setPrivilegedAttr(I)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .registers 5
    .param p1, "attr"    # I

    .prologue
    .line 1072
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "privileged"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1073
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "privileged_attr"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1074
    return-object p0
.end method

.method public setSecurityLevel(I)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .registers 5
    .param p1, "securityLevel"    # I

    .prologue
    .line 1038
    packed-switch p1, :pswitch_data_16

    .line 1046
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "securityLevel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1049
    :goto_c
    return-object p0

    .line 1043
    :pswitch_d
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "securityLevel"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_c

    .line 1038
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public useManualTimeout(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .registers 4
    .param p1, "use"    # Z

    .prologue
    .line 1033
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "useManualTimeout"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1034
    return-object p0
.end method
