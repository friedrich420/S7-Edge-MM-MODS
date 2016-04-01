.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;
.super Ljava/lang/Object;
.source "KeyType.java"


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mAlgorithmParameter:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

.field private mData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

.field private mFriendlyName:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mIssuer:Ljava/lang/String;

.field private mKeyProfileId:Ljava/lang/String;

.field private mKeyReference:Ljava/lang/String;

.field public mOcraSuite:Ljava/lang/String;

.field private mPolicy:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, mAlgorithmParameter:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    return-object v0
.end method

.method public getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, mData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, mIssuer:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyProfileID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, mKeyProfileId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyReference()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, mKeyReference:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, mPolicy:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .registers 7
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyType::setAlgorithm: ENTER ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, mAlgorithm:Ljava/lang/String;

    .line 42
    iget-object v1, p0, mAlgorithm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ocra"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 44
    :try_start_2d
    iget-object v1, p0, mAlgorithm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, mAlgorithm:Ljava/lang/String;

    const-string/jumbo v3, "ocra-1:"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mOcraSuite:Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2d .. :try_end_43} :catch_44

    .line 49
    :cond_43
    :goto_43
    return-void

    .line 45
    :catch_44
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyType::setAlgorithm: IndexOutOfBoundsException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_43
.end method

.method public setAlgorithmParameter(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;)V
    .registers 4
    .param p1, "algorithmParameter"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    .prologue
    .line 56
    iget-object v0, p0, mAlgorithm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ocra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getSuite()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 57
    iget-object v0, p0, mOcraSuite:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->setSuite(Ljava/lang/String;)V

    .line 59
    :cond_1a
    iput-object p1, p0, mAlgorithmParameter:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    .line 60
    return-void
.end method

.method public setData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;)V
    .registers 2
    .param p1, "data"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    .prologue
    .line 67
    iput-object p1, p0, mData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    .line 68
    return-void
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .registers 2
    .param p1, "friendlyName"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, mFriendlyName:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, mId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setIssuer(Ljava/lang/String;)V
    .registers 2
    .param p1, "issuer"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, mIssuer:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setKeyProfileID(Ljava/lang/String;)V
    .registers 2
    .param p1, "keyProfileID"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, mKeyProfileId:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setKeyReference(Ljava/lang/String;)V
    .registers 2
    .param p1, "keyReference"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, mKeyReference:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setPolicy(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;)V
    .registers 2
    .param p1, "policy"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    .prologue
    .line 75
    iput-object p1, p0, mPolicy:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    .line 76
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .registers 2
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, mUserId:Ljava/lang/String;

    .line 100
    return-void
.end method
