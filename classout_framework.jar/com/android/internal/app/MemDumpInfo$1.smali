.class final Lcom/android/internal/app/MemDumpInfo$1;
.super Ljava/lang/Object;
.source "MemDumpInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MemDumpInfo;
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
        "Lcom/android/internal/app/MemDumpInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/app/MemDumpInfo;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 87
    new-instance v0, Lcom/android/internal/app/MemDumpInfo;

    invoke-direct {v0, p1}, Lcom/android/internal/app/MemDumpInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 83
    invoke-virtual {p0, p1}, createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/app/MemDumpInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/app/MemDumpInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 94
    new-array v0, p1, [Lcom/android/internal/app/MemDumpInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 83
    invoke-virtual {p0, p1}, newArray(I)[Lcom/android/internal/app/MemDumpInfo;

    move-result-object v0

    return-object v0
.end method
