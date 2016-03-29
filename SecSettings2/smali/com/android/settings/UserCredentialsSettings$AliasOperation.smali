.class Lcom/android/settings/UserCredentialsSettings$AliasOperation;
.super Landroid/os/AsyncTask;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCertHolder:Lcom/android/settings/UserCredentialsSettings$CertHolder;

.field final synthetic this$0:Lcom/android/settings/UserCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$CertHolder;)V
    .locals 0
    .param p2, "certHolder"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$AliasOperation;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 772
    iput-object p2, p0, Lcom/android/settings/UserCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .line 773
    # setter for: Lcom/android/settings/UserCredentialsSettings;->mAliasOperation:Lcom/android/settings/UserCredentialsSettings$AliasOperation;
    invoke-static {p1, p0}, Lcom/android/settings/UserCredentialsSettings;->access$3502(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$AliasOperation;)Lcom/android/settings/UserCredentialsSettings$AliasOperation;

    .line 774
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$CertHolder;Lcom/android/settings/UserCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/UserCredentialsSettings;
    .param p2, "x1"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;
    .param p3, "x2"    # Lcom/android/settings/UserCredentialsSettings$1;

    .prologue
    .line 768
    invoke-direct {p0, p1, p2}, Lcom/android/settings/UserCredentialsSettings$AliasOperation;-><init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$CertHolder;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 778
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 780
    .local v0, "mKeyStore":Landroid/security/KeyStore;
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/UserCredentialsSettings$CertHolder;

    # getter for: Lcom/android/settings/UserCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;
    invoke-static {v1}, Lcom/android/settings/UserCredentialsSettings$CertHolder;->access$2900(Lcom/android/settings/UserCredentialsSettings$CertHolder;)Lcom/android/settings/UserCredentialsSettings$Tab;

    move-result-object v1

    # getter for: Lcom/android/settings/UserCredentialsSettings$Tab;->mUid:I
    invoke-static {v1}, Lcom/android/settings/UserCredentialsSettings$Tab;->access$2100(Lcom/android/settings/UserCredentialsSettings$Tab;)I

    move-result v1

    if-gez v1, :cond_0

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/UserCredentialsSettings$CertHolder;

    # getter for: Lcom/android/settings/UserCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/UserCredentialsSettings$CertHolder;->access$3600(Lcom/android/settings/UserCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 785
    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 783
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/UserCredentialsSettings$CertHolder;

    # getter for: Lcom/android/settings/UserCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/UserCredentialsSettings$CertHolder;->access$3600(Lcom/android/settings/UserCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/UserCredentialsSettings$CertHolder;

    # getter for: Lcom/android/settings/UserCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/android/settings/UserCredentialsSettings$CertHolder;->access$2900(Lcom/android/settings/UserCredentialsSettings$CertHolder;)Lcom/android/settings/UserCredentialsSettings$Tab;

    move-result-object v2

    # getter for: Lcom/android/settings/UserCredentialsSettings$Tab;->mUid:I
    invoke-static {v2}, Lcom/android/settings/UserCredentialsSettings$Tab;->access$2100(Lcom/android/settings/UserCredentialsSettings$Tab;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 768
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AliasOperation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "ok"    # Ljava/lang/Boolean;

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/UserCredentialsSettings$CertHolder;

    # getter for: Lcom/android/settings/UserCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;
    invoke-static {v0}, Lcom/android/settings/UserCredentialsSettings$CertHolder;->access$2900(Lcom/android/settings/UserCredentialsSettings$CertHolder;)Lcom/android/settings/UserCredentialsSettings$Tab;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/settings/UserCredentialsSettings$CertHolder;

    # invokes: Lcom/android/settings/UserCredentialsSettings$Tab;->postOperationUpdate(ZLcom/android/settings/UserCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/UserCredentialsSettings$Tab;->access$3700(Lcom/android/settings/UserCredentialsSettings$Tab;ZLcom/android/settings/UserCredentialsSettings$CertHolder;)V

    .line 791
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AliasOperation;->this$0:Lcom/android/settings/UserCredentialsSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/UserCredentialsSettings;->mAliasOperation:Lcom/android/settings/UserCredentialsSettings$AliasOperation;
    invoke-static {v0, v1}, Lcom/android/settings/UserCredentialsSettings;->access$3502(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$AliasOperation;)Lcom/android/settings/UserCredentialsSettings$AliasOperation;

    .line 792
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 768
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AliasOperation;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
