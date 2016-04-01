.class final Landroid/sec/clipboard/data/ClipboardData$1;
.super Ljava/lang/Object;
.source "ClipboardData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/data/ClipboardData;
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
        "Landroid/sec/clipboard/data/ClipboardData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/sec/clipboard/data/ClipboardData;
    .registers 9
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 262
    .local v1, "format":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 263
    .local v4, "timestamp":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v2, :cond_2a

    .line 264
    .local v2, "hasFD":Z
    :goto_f
    if-eqz v2, :cond_2c

    new-instance v3, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    .line 265
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_1a
    invoke-static {v1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 266
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_29

    .line 271
    invoke-virtual {v0, v4, v5}, Landroid/sec/clipboard/data/ClipboardData;->setTimestamp(J)V

    .line 272
    invoke-virtual {v0, v3}, Landroid/sec/clipboard/data/ClipboardData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 273
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardData;->readFromSource(Landroid/os/Parcel;)V

    .line 275
    :cond_29
    return-object v0

    .line 263
    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    .end local v2    # "hasFD":Z
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_2a
    const/4 v2, 0x0

    goto :goto_f

    .line 264
    .restart local v2    # "hasFD":Z
    :cond_2c
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 257
    invoke-virtual {p0, p1}, createFromParcel(Landroid/os/Parcel;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/sec/clipboard/data/ClipboardData;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 279
    new-array v0, p1, [Landroid/sec/clipboard/data/ClipboardData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 257
    invoke-virtual {p0, p1}, newArray(I)[Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method
