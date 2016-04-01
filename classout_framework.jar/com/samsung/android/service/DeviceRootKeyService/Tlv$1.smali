.class final Lcom/samsung/android/service/DeviceRootKeyService/Tlv$1;
.super Ljava/lang/Object;
.source "Tlv.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/android/service/DeviceRootKeyService/Tlv;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 95
    new-instance v3, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-direct {v3}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;-><init>()V

    .line 96
    .local v3, "tlv":Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .local v0, "elementNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1f

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 101
    .local v2, "key":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-array v4, v5, [B

    .line 102
    .local v4, "value":[B
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 104
    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 107
    .end local v2    # "key":I
    .end local v4    # "value":[B
    :cond_1f
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 92
    invoke-virtual {p0, p1}, createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 112
    new-array v0, p1, [Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 92
    invoke-virtual {p0, p1}, newArray(I)[Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    move-result-object v0

    return-object v0
.end method
