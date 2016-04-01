.class public final Landroid/security/keystore/KeyProtection$Builder;
.super Ljava/lang/Object;
.source "KeyProtection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProtection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBlockModes:[Ljava/lang/String;

.field private mDigests:[Ljava/lang/String;

.field private mEncryptionPaddings:[Ljava/lang/String;

.field private mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private mKeyValidityStart:Ljava/util/Date;

.field private mPurposes:I

.field private mRandomizedEncryptionRequired:Z

.field private mSignaturePaddings:[Ljava/lang/String;

.field private mUserAuthenticationRequired:Z

.field private mUserAuthenticationValidityDurationSeconds:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "purposes"    # I

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, mRandomizedEncryptionRequired:Z

    .line 409
    const/4 v0, -0x1

    iput v0, p0, mUserAuthenticationValidityDurationSeconds:I

    .line 420
    iput p1, p0, mPurposes:I

    .line 421
    return-void
.end method


# virtual methods
.method public build()Landroid/security/keystore/KeyProtection;
    .registers 14

    .prologue
    .line 689
    new-instance v0, Landroid/security/keystore/KeyProtection;

    iget-object v1, p0, mKeyValidityStart:Ljava/util/Date;

    iget-object v2, p0, mKeyValidityForOriginationEnd:Ljava/util/Date;

    iget-object v3, p0, mKeyValidityForConsumptionEnd:Ljava/util/Date;

    iget v4, p0, mPurposes:I

    iget-object v5, p0, mEncryptionPaddings:[Ljava/lang/String;

    iget-object v6, p0, mSignaturePaddings:[Ljava/lang/String;

    iget-object v7, p0, mDigests:[Ljava/lang/String;

    iget-object v8, p0, mBlockModes:[Ljava/lang/String;

    iget-boolean v9, p0, mRandomizedEncryptionRequired:Z

    iget-boolean v10, p0, mUserAuthenticationRequired:Z

    iget v11, p0, mUserAuthenticationValidityDurationSeconds:I

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Landroid/security/keystore/KeyProtection;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZILandroid/security/keystore/KeyProtection$1;)V

    return-object v0
.end method

.method public varargs setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .registers 3
    .param p1, "blockModes"    # [Ljava/lang/String;

    .prologue
    .line 553
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mBlockModes:[Ljava/lang/String;

    .line 554
    return-object p0
.end method

.method public varargs setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .registers 3
    .param p1, "digests"    # [Ljava/lang/String;

    .prologue
    .line 538
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mDigests:[Ljava/lang/String;

    .line 539
    return-object p0
.end method

.method public varargs setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .registers 3
    .param p1, "paddings"    # [Ljava/lang/String;

    .prologue
    .line 498
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mEncryptionPaddings:[Ljava/lang/String;

    .line 499
    return-object p0
.end method

.method public setKeyValidityEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 447
    invoke-virtual {p0, p1}, setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;

    .line 448
    invoke-virtual {p0, p1}, setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;

    .line 449
    return-object p0
.end method

.method public setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .registers 3
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 475
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, mKeyValidityForConsumptionEnd:Ljava/util/Date;

    .line 476
    return-object p0
.end method

.method public setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .registers 3
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 461
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 462
    return-object p0
.end method

.method public setKeyValidityStart(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .registers 3
    .param p1, "startDate"    # Ljava/util/Date;

    .prologue
    .line 432
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, mKeyValidityStart:Ljava/util/Date;

    .line 433
    return-object p0
.end method

.method public setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2
    .param p1, "required"    # Z

    .prologue
    .line 593
    iput-boolean p1, p0, mRandomizedEncryptionRequired:Z

    .line 594
    return-object p0
.end method

.method public varargs setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .registers 3
    .param p1, "paddings"    # [Ljava/lang/String;

    .prologue
    .line 514
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mSignaturePaddings:[Ljava/lang/String;

    .line 515
    return-object p0
.end method

.method public setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2
    .param p1, "required"    # Z

    .prologue
    .line 633
    iput-boolean p1, p0, mUserAuthenticationRequired:Z

    .line 634
    return-object p0
.end method

.method public setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;
    .registers 4
    .param p1, "seconds"    # I

    .prologue
    .line 675
    const/4 v0, -0x1

    if-ge p1, v0, :cond_c

    .line 676
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "seconds must be -1 or larger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_c
    iput p1, p0, mUserAuthenticationValidityDurationSeconds:I

    .line 679
    return-object p0
.end method
