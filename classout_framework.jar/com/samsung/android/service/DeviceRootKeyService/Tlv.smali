.class public final Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
.super Ljava/lang/Object;
.source "Tlv.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/service/DeviceRootKeyService/Tlv;",
            ">;"
        }
    .end annotation
.end field

.field public static final TLV_ATTRS:I = 0x10

.field public static final TLV_TAG_CERT_SD:I = 0x9

.field public static final TLV_TAG_CERT_SM:I = 0x8

.field public static final TLV_TAG_EXPONENT:I = 0x1

.field public static final TLV_TAG_EXTEND_PCR_DATA:I = 0xc

.field public static final TLV_TAG_EXT_KEYUSAGE:I = 0x6

.field public static final TLV_TAG_HASH_ALGO:I = 0x3

.field public static final TLV_TAG_ISSUER:I = 0x2

.field public static final TLV_TAG_KEYUSAGE:I = 0x5

.field private static final TLV_TAG_MAX:I = 0x11

.field public static final TLV_TAG_SIGN_DATA_BLOB:I = 0x7

.field public static final TLV_TAG_SUBJECT:I = 0x4

.field public static final TLV_TAG_TID:I = 0xd

.field public static final TLV_TAG_TIMESTAMP:I = 0xa

.field public static final TLV_TAG_TLV_KEY_INFO:I = 0xf

.field public static final TLV_TAG_WRAPPED_KEY:I = 0xe

.field public static final TLV_TAG_WRAPPED_PCR:I = 0xb


# instance fields
.field private mTlvList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv$1;

    invoke-direct {v0}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mTlvList:Ljava/util/HashMap;

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getTlvValue(I)[B
    .registers 4
    .param p1, "tlvTag"    # I

    .prologue
    .line 62
    const/4 v0, 0x1

    if-lt p1, v0, :cond_14

    const/16 v0, 0x11

    if-ge p1, v0, :cond_14

    .line 63
    iget-object v0, p0, mTlvList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 65
    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public getTotalSize()I
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, mTlvList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getValidKeyList()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, mTlvList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public setTlv(I[B)Z
    .registers 6
    .param p1, "tlvTag"    # I
    .param p2, "tlvValue"    # [B

    .prologue
    const/4 v0, 0x1

    .line 51
    if-lt p1, v0, :cond_11

    const/16 v1, 0x11

    if-ge p1, v1, :cond_11

    .line 53
    iget-object v1, p0, mTlvList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 82
    iget-object v2, p0, mTlvList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v2, p0, mTlvList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 86
    .local v1, "key":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v2, p0, mTlvList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v2, p0, mTlvList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_13

    .line 90
    .end local v1    # "key":I
    :cond_46
    return-void
.end method
