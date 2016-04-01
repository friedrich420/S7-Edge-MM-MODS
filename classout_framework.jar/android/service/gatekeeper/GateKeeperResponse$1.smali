.class final Landroid/service/gatekeeper/GateKeeperResponse$1;
.super Ljava/lang/Object;
.source "GateKeeperResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gatekeeper/GateKeeperResponse;
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
        "Landroid/service/gatekeeper/GateKeeperResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/gatekeeper/GateKeeperResponse;
    .registers 8
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 56
    .local v2, "responseCode":I
    new-instance v1, Landroid/service/gatekeeper/GateKeeperResponse;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Landroid/service/gatekeeper/GateKeeperResponse;-><init>(ILandroid/service/gatekeeper/GateKeeperResponse$1;)V

    .line 57
    .local v1, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    if-ne v2, v4, :cond_15

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    # invokes: Landroid/service/gatekeeper/GateKeeperResponse;->setTimeout(I)V
    invoke-static {v1, v4}, Landroid/service/gatekeeper/GateKeeperResponse;->access$100(Landroid/service/gatekeeper/GateKeeperResponse;I)V

    .line 68
    :cond_14
    :goto_14
    return-object v1

    .line 59
    :cond_15
    if-nez v2, :cond_14

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v4, :cond_2f

    :goto_1d
    # invokes: Landroid/service/gatekeeper/GateKeeperResponse;->setShouldReEnroll(Z)V
    invoke-static {v1, v4}, Landroid/service/gatekeeper/GateKeeperResponse;->access$200(Landroid/service/gatekeeper/GateKeeperResponse;Z)V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 62
    .local v3, "size":I
    if-lez v3, :cond_14

    .line 63
    new-array v0, v3, [B

    .line 64
    .local v0, "payload":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 65
    # invokes: Landroid/service/gatekeeper/GateKeeperResponse;->setPayload([B)V
    invoke-static {v1, v0}, Landroid/service/gatekeeper/GateKeeperResponse;->access$300(Landroid/service/gatekeeper/GateKeeperResponse;[B)V

    goto :goto_14

    .line 60
    .end local v0    # "payload":[B
    .end local v3    # "size":I
    :cond_2f
    const/4 v4, 0x0

    goto :goto_1d
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, createFromParcel(Landroid/os/Parcel;)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/gatekeeper/GateKeeperResponse;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 73
    new-array v0, p1, [Landroid/service/gatekeeper/GateKeeperResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 52
    invoke-virtual {p0, p1}, newArray(I)[Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    return-object v0
.end method
