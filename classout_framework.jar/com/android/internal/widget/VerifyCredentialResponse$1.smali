.class final Lcom/android/internal/widget/VerifyCredentialResponse$1;
.super Ljava/lang/Object;
.source "VerifyCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/VerifyCredentialResponse;
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
        "Lcom/android/internal/widget/VerifyCredentialResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 8
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 51
    .local v2, "responseCode":I
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v5, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BLcom/android/internal/widget/VerifyCredentialResponse$1;)V

    .line 52
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    const/4 v4, 0x1

    if-ne v2, v4, :cond_16

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    # invokes: Lcom/android/internal/widget/VerifyCredentialResponse;->setTimeout(I)V
    invoke-static {v1, v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->access$100(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    .line 62
    :cond_15
    :goto_15
    return-object v1

    .line 54
    :cond_16
    if-nez v2, :cond_15

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    .local v3, "size":I
    if-lez v3, :cond_15

    .line 57
    new-array v0, v3, [B

    .line 58
    .local v0, "payload":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 59
    # invokes: Lcom/android/internal/widget/VerifyCredentialResponse;->setPayload([B)V
    invoke-static {v1, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->access$200(Lcom/android/internal/widget/VerifyCredentialResponse;[B)V

    goto :goto_15
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 67
    new-array v0, p1, [Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, newArray(I)[Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method
