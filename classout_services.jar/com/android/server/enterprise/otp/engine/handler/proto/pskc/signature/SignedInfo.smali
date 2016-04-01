.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;
.super Ljava/lang/Object;
.source "SignedInfo.java"


# instance fields
.field private mCanonicalizationMethod:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mReferenceDigestMethod:Ljava/lang/String;

.field private mReferenceDigestValue:[B

.field private mReferenceId:Ljava/lang/String;

.field private mReferenceType:Ljava/lang/String;

.field private mReferenceUri:Ljava/lang/String;

.field private mSignatureMethodAlgo:Ljava/lang/String;

.field private mSignatureMethodHmacLength:I

.field private mTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCanonicalizationMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, mCanonicalizationMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, mId:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceDigestMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, mReferenceDigestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceDigestValue()[B
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, mReferenceDigestValue:[B

    return-object v0
.end method

.method public getReferenceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, mReferenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, mReferenceUri:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, mReferenceType:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureMethodAlgo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, mSignatureMethodAlgo:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureMethodHmacLength()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, mSignatureMethodHmacLength:I

    return v0
.end method

.method public getTransforms()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, mTransforms:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCanonicalizationMethod(Ljava/lang/String;)V
    .registers 2
    .param p1, "mCanonicalizationMethod"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, mCanonicalizationMethod:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "mId"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, mId:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setReferenceDigestMethod(Ljava/lang/String;)V
    .registers 2
    .param p1, "mReferenceDigestMethod"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, mReferenceDigestMethod:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setReferenceDigestValue([B)V
    .registers 2
    .param p1, "mReferenceDigestValue"    # [B

    .prologue
    .line 101
    iput-object p1, p0, mReferenceDigestValue:[B

    .line 102
    return-void
.end method

.method public setReferenceId(Ljava/lang/String;)V
    .registers 2
    .param p1, "mReferenceId"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, mReferenceId:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setReferenceName(Ljava/lang/String;)V
    .registers 2
    .param p1, "mReferenceName"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, mReferenceUri:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setReferenceType(Ljava/lang/String;)V
    .registers 2
    .param p1, "mReferenceType"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, mReferenceType:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setSignatureMethodAlgo(Ljava/lang/String;)V
    .registers 2
    .param p1, "mSignatureMethodAlgo"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, mSignatureMethodAlgo:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setSignatureMethodHmacLength(I)V
    .registers 2
    .param p1, "mSignatureMethodHmacLength"    # I

    .prologue
    .line 61
    iput p1, p0, mSignatureMethodHmacLength:I

    .line 62
    return-void
.end method

.method public setmTransforms(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "mTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;>;"
    iput-object p1, p0, mTransforms:Ljava/util/ArrayList;

    .line 110
    return-void
.end method
