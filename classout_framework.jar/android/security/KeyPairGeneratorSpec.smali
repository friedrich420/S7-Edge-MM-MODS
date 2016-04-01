.class public final Landroid/security/KeyPairGeneratorSpec;
.super Ljava/lang/Object;
.source "KeyPairGeneratorSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyPairGeneratorSpec$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEndDate:Ljava/util/Date;

.field private final mFlags:I

.field private final mKeySize:I

.field private final mKeyType:Ljava/lang/String;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private final mSerialNumber:Ljava/math/BigInteger;

.field private final mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final mStartDate:Ljava/util/Date;

.field private final mSubjectDN:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;I)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyStoreAlias"    # Ljava/lang/String;
    .param p3, "keyType"    # Ljava/lang/String;
    .param p4, "keySize"    # I
    .param p5, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p6, "subjectDN"    # Ljavax/security/auth/x500/X500Principal;
    .param p7, "serialNumber"    # Ljava/math/BigInteger;
    .param p8, "startDate"    # Ljava/util/Date;
    .param p9, "endDate"    # Ljava/util/Date;
    .param p10, "flags"    # I

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    if-nez p1, :cond_d

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyStoreAlias must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1b
    if-nez p6, :cond_26

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "subjectDN == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_26
    if-nez p7, :cond_31

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "serialNumber == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_31
    if-nez p8, :cond_3c

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startDate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_3c
    if-nez p9, :cond_46

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endDate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_46
    invoke-virtual {p9, p8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endDate < startDate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_54
    invoke-virtual {p9, p8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endDate < startDate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_62
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, mKeystoreAlias:Ljava/lang/String;

    .line 140
    iput-object p3, p0, mKeyType:Ljava/lang/String;

    .line 141
    iput p4, p0, mKeySize:I

    .line 142
    iput-object p5, p0, mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 143
    iput-object p6, p0, mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    .line 144
    iput-object p7, p0, mSerialNumber:Ljava/math/BigInteger;

    .line 145
    iput-object p8, p0, mStartDate:Ljava/util/Date;

    .line 146
    iput-object p9, p0, mEndDate:Ljava/util/Date;

    .line 147
    iput p10, p0, mFlags:I

    .line 148
    return-void
.end method


# virtual methods
.method public getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEndDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, mEndDate:Ljava/util/Date;

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 232
    iget v0, p0, mFlags:I

    return v0
.end method

.method public getKeySize()I
    .registers 2

    .prologue
    .line 180
    iget v0, p0, mKeySize:I

    return v0
.end method

.method public getKeyType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, mKeyType:Ljava/lang/String;

    return-object v0
.end method

.method public getKeystoreAlias()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, mSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, mStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSubjectDN()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public isEncryptionRequired()Z
    .registers 2

    .prologue
    .line 248
    iget v0, p0, mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
