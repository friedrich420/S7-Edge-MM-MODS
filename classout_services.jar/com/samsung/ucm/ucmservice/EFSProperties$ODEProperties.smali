.class public Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/EFSProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ODEProperties"
.end annotation


# instance fields
.field public AID:[B

.field public authMaxCnt:I

.field public authMode:I

.field public csName:[B

.field public enabledSCP:I

.field public enabledUCSInODE:I

.field public enabledWrap:I

.field public pinMaxLength:I

.field public pinMinLength:I

.field public pukMaxLength:I

.field public pukMinLength:I

.field public storageType:I


# direct methods
.method public constructor <init>(I[BIIIIIIIII[B)V
    .registers 13
    .param p1, "enabledUCSInODE"    # I
    .param p2, "AID"    # [B
    .param p3, "storageType"    # I
    .param p4, "enabledSCP"    # I
    .param p5, "enabledWrap"    # I
    .param p6, "pinMinLength"    # I
    .param p7, "pinMaxLength"    # I
    .param p8, "authMode"    # I
    .param p9, "authMaxCnt"    # I
    .param p10, "pukMinLength"    # I
    .param p11, "pukMaxLength"    # I
    .param p12, "csName"    # [B

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput p1, p0, enabledUCSInODE:I

    .line 216
    iput-object p2, p0, AID:[B

    .line 217
    iput p3, p0, storageType:I

    .line 218
    iput p4, p0, enabledSCP:I

    .line 219
    iput p5, p0, enabledWrap:I

    .line 220
    iput p6, p0, pinMinLength:I

    .line 221
    iput p7, p0, pinMaxLength:I

    .line 222
    iput p8, p0, authMode:I

    .line 223
    iput p9, p0, authMaxCnt:I

    .line 224
    iput p10, p0, pukMinLength:I

    .line 225
    iput p11, p0, pukMaxLength:I

    .line 226
    iput-object p12, p0, csName:[B

    .line 228
    return-void
.end method

.method public static getSCPTypeIndex(Ljava/lang/String;)I
    .registers 7
    .param p0, "scpType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 252
    sget-object v4, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    array-length v2, v4

    .line 253
    .local v2, "length":I
    const/4 v1, -0x1

    .line 254
    .local v1, "index":I
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-ne v5, v4, :cond_16

    .line 255
    :cond_d
    const-string v4, "EFSProperties"

    const-string v5, "SCP empty, set SCP_NONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v4, 0x0

    .line 268
    :goto_15
    return v4

    .line 259
    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "lowerSCPType":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    if-ge v0, v2, :cond_31

    .line 262
    sget-object v4, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v5, v4, :cond_2e

    .line 263
    move v1, v0

    move v4, v1

    .line 264
    goto :goto_15

    .line 261
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_31
    move v4, v1

    .line 268
    goto :goto_15
.end method

.method public static getStorageTypeIndex(Ljava/lang/String;)I
    .registers 9
    .param p0, "storageType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 231
    sget-object v5, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    array-length v3, v5

    .line 232
    .local v3, "length":I
    const/4 v1, -0x1

    .line 233
    .local v1, "index":I
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-ne v7, v5, :cond_f

    :cond_d
    move v2, v1

    .line 247
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_e
    return v2

    .line 237
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "lowerStorageType":Ljava/lang/String;
    const-string/jumbo v5, "uicc"

    const-string/jumbo v6, "sim"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    if-ge v0, v3, :cond_34

    .line 241
    sget-object v5, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v7, v5, :cond_31

    .line 242
    move v1, v0

    move v2, v1

    .line 243
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_e

    .line 240
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_34
    move v2, v1

    .line 247
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_e
.end method
