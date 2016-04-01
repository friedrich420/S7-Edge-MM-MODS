.class public Landroid/sec/clipboard/data/list/ClipboardDataScrapBitmap;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataScrapBitmap.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public GetBitmapPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 4
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public SetBitmapPath(Ljava/lang/String;)Z
    .registers 3
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public clearData()V
    .registers 1

    .prologue
    .line 41
    return-void
.end method

.method public isValidData()Z
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 61
    return-void
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 65
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 57
    return-void
.end method
