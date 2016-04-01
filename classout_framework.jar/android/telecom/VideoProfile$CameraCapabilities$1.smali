.class final Landroid/telecom/VideoProfile$CameraCapabilities$1;
.super Ljava/lang/Object;
.source "VideoProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoProfile$CameraCapabilities;
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
        "Landroid/telecom/VideoProfile$CameraCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/VideoProfile$CameraCapabilities;
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 377
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 378
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_19

    const/4 v2, 0x1

    .line 379
    .local v2, "supportsZoom":Z
    :goto_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 381
    .local v1, "maxZoom":F
    new-instance v4, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-direct {v4, v3, v0, v2, v1}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V

    return-object v4

    .line 378
    .end local v1    # "maxZoom":F
    .end local v2    # "supportsZoom":Z
    :cond_19
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 367
    invoke-virtual {p0, p1}, createFromParcel(Landroid/os/Parcel;)Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/VideoProfile$CameraCapabilities;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 386
    new-array v0, p1, [Landroid/telecom/VideoProfile$CameraCapabilities;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 367
    invoke-virtual {p0, p1}, newArray(I)[Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object v0

    return-object v0
.end method
