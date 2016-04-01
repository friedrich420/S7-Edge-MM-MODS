.class final Lcom/samsung/android/app/ExecutableInfo$1;
.super Ljava/lang/Object;
.source "ExecutableInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/ExecutableInfo;
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
        "Lcom/samsung/android/app/ExecutableInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/ExecutableInfo;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 129
    new-instance v0, Lcom/samsung/android/app/ExecutableInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/ExecutableInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 127
    invoke-virtual {p0, p1}, createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/ExecutableInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/app/ExecutableInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 133
    new-array v0, p1, [Lcom/samsung/android/app/ExecutableInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 127
    invoke-virtual {p0, p1}, newArray(I)[Lcom/samsung/android/app/ExecutableInfo;

    move-result-object v0

    return-object v0
.end method
