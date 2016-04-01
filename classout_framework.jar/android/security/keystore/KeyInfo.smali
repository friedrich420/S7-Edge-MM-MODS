.class public Landroid/security/keystore/KeyInfo;
.super Ljava/lang/Object;
.source "KeyInfo.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final mBlockModes:[Ljava/lang/String;

.field private final mDigests:[Ljava/lang/String;

.field private final mEncryptionPaddings:[Ljava/lang/String;

.field private final mInsideSecureHardware:Z

.field private final mKeySize:I

.field private final mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final mKeyValidityStart:Ljava/util/Date;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private final mOrigin:I

.field private final mPurposes:I

.field private final mSignaturePaddings:[Ljava/lang/String;

.field private final mUserAuthenticationRequired:Z

.field private final mUserAuthenticationRequirementEnforcedBySecureHardware:Z

.field private final mUserAuthenticationValidityDurationSeconds:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIZ)V
    .registers 18
    .param p1, "keystoreKeyAlias"    # Ljava/lang/String;
    .param p2, "insideSecureHardware"    # Z
    .param p3, "origin"    # I
    .param p4, "keySize"    # I
    .param p5, "keyValidityStart"    # Ljava/util/Date;
    .param p6, "keyValidityForOriginationEnd"    # Ljava/util/Date;
    .param p7, "keyValidityForConsumptionEnd"    # Ljava/util/Date;
    .param p8, "purposes"    # I
    .param p9, "encryptionPaddings"    # [Ljava/lang/String;
    .param p10, "signaturePaddings"    # [Ljava/lang/String;
    .param p11, "digests"    # [Ljava/lang/String;
    .param p12, "blockModes"    # [Ljava/lang/String;
    .param p13, "userAuthenticationRequired"    # Z
    .param p14, "userAuthenticationValidityDurationSeconds"    # I
    .param p15, "userAuthenticationRequirementEnforcedBySecureHardware"    # Z

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, mKeystoreAlias:Ljava/lang/String;

    .line 104
    iput-boolean p2, p0, mInsideSecureHardware:Z

    .line 105
    iput p3, p0, mOrigin:I

    .line 106
    iput p4, p0, mKeySize:I

    .line 107
    invoke-static {p5}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, mKeyValidityStart:Ljava/util/Date;

    .line 108
    invoke-static {p6}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 109
    invoke-static {p7}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, mKeyValidityForConsumptionEnd:Ljava/util/Date;

    .line 110
    iput p8, p0, mPurposes:I

    .line 111
    invoke-static {p9}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mEncryptionPaddings:[Ljava/lang/String;

    .line 113
    invoke-static {p10}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mSignaturePaddings:[Ljava/lang/String;

    .line 115
    invoke-static {p11}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mDigests:[Ljava/lang/String;

    .line 116
    invoke-static {p12}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mBlockModes:[Ljava/lang/String;

    .line 117
    iput-boolean p13, p0, mUserAuthenticationRequired:Z

    .line 118
    move/from16 v0, p14

    iput v0, p0, mUserAuthenticationValidityDurationSeconds:I

    .line 119
    move/from16 v0, p15

    iput-boolean v0, p0, mUserAuthenticationRequirementEnforcedBySecureHardware:Z

    .line 121
    return-void
.end method


# virtual methods
.method public getBlockModes()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, mBlockModes:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigests()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, mDigests:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionPaddings()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeySize()I
    .registers 2

    .prologue
    .line 150
    iget v0, p0, mKeySize:I

    return v0
.end method

.method public getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValidityForOriginationEnd()Ljava/util/Date;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValidityStart()Ljava/util/Date;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, mKeyValidityStart:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeystoreAlias()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()I
    .registers 2

    .prologue
    .line 143
    iget v0, p0, mOrigin:I

    return v0
.end method

.method public getPurposes()I
    .registers 2

    .prologue
    .line 190
    iget v0, p0, mPurposes:I

    return v0
.end method

.method public getSignaturePaddings()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, mSignaturePaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAuthenticationValidityDurationSeconds()I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, mUserAuthenticationValidityDurationSeconds:I

    return v0
.end method

.method public isInsideSecureHardware()Z
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, mInsideSecureHardware:Z

    return v0
.end method

.method public isUserAuthenticationRequired()Z
    .registers 2

    .prologue
    .line 252
    iget-boolean v0, p0, mUserAuthenticationRequired:Z

    return v0
.end method

.method public isUserAuthenticationRequirementEnforcedBySecureHardware()Z
    .registers 2

    .prologue
    .line 280
    iget-boolean v0, p0, mUserAuthenticationRequirementEnforcedBySecureHardware:Z

    return v0
.end method
