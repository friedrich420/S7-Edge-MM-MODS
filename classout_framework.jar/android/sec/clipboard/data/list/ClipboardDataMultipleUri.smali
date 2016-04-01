.class public Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;
.super Landroid/sec/clipboard/data/list/ClipboardDataUriList;
.source "ClipboardDataMultipleUri.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public GetMultipleUri()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-super {p0}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->getUriList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 4
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    return v0
.end method

.method public SetMultipleUri(Ljava/util/ArrayList;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->setUriList(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public SetMultipleUriInternal(Ljava/util/ArrayList;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->setUriListInternal(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public clearData()V
    .registers 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->clearData()V

    .line 57
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 133
    return-void
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->readFromSource(Landroid/os/Parcel;)V

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 107
    return-void
.end method
