.class final Landroid/telephony/SubInfoRecord$1;
.super Ljava/lang/Object;
.source "SubInfoRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubInfoRecord;
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
        "Landroid/telephony/SubInfoRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SubInfoRecord;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 141
    invoke-virtual {p0, p1}, createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/SubInfoRecord;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 141
    invoke-virtual {p0, p1}, newArray(I)[Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method
