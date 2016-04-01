.class public Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataMultipleType.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardDataMultipleType"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 6
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 52
    .local v0, "Result":Z
    if-eqz v0, :cond_13

    iget-object v1, p0, mClipdata:Landroid/content/ClipData;

    if-eqz v1, :cond_13

    iget-object v1, p0, mClipdata:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_15

    .line 53
    :cond_13
    const/4 v1, 0x0

    .line 63
    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_14
    return v1

    .line 55
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_15
    packed-switch p1, :pswitch_data_24

    .line 60
    const/4 v0, 0x0

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_19
    move v1, v0

    .line 63
    goto :goto_14

    .line 57
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_1b
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v1, p0, mClipdata:Landroid/content/ClipData;

    invoke-virtual {p2, v1}, setMultipleType(Landroid/content/ClipData;)Z

    move-result v0

    .line 58
    goto :goto_19

    .line 55
    :pswitch_data_24
    .packed-switch 0x8
        :pswitch_1b
    .end packed-switch
.end method

.method public clearData()V
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, mClipdata:Landroid/content/ClipData;

    .line 90
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 103
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_c

    .line 104
    const-string v2, "ClipboardDataMultipleType"

    const-string/jumbo v3, "multiple type equals"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_c
    const/4 v0, 0x0

    .line 107
    .local v0, "Result":Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 116
    .end local v0    # "Result":Z
    :cond_13
    :goto_13
    return v0

    .line 111
    .restart local v0    # "Result":Z
    :cond_14
    instance-of v2, p1, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;

    if-eqz v2, :cond_13

    move-object v1, p1

    .line 115
    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;

    .line 116
    .local v1, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;
    iget-object v2, p0, mClipdata:Landroid/content/ClipData;

    invoke-virtual {v1}, getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_13
.end method

.method public getMultipleType()Landroid/content/ClipData;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, mClipdata:Landroid/content/ClipData;

    return-object v0
.end method

.method public isValidData()Z
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, mClipdata:Landroid/content/ClipData;

    if-nez v0, :cond_6

    .line 95
    const/4 v0, 0x0

    .line 97
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 151
    return-void
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 137
    :try_start_0
    const-class v1, Landroid/content/ClipData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, p0, mClipdata:Landroid/content/ClipData;

    .line 138
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, mIsProtected:Z

    .line 139
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v1, :cond_2b

    .line 140
    const-string v1, "ClipboardDataMultipleType"

    const-string v2, "ClipboardDataMultipleType : readFromSource : "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 145
    :cond_2b
    :goto_2b
    return-void

    .line 142
    :catch_2c
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ClipboardDataMultipleType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readFromSource~Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public setMultipleType(Landroid/content/ClipData;)Z
    .registers 3
    .param p1, "clipdata"    # Landroid/content/ClipData;

    .prologue
    .line 71
    iput-object p1, p0, mClipdata:Landroid/content/ClipData;

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 122
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 123
    const-string v0, "ClipboardDataMultipleType"

    const-string v1, "Multiple Type write to parcel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 126
    iget-object v0, p0, mClipdata:Landroid/content/ClipData;

    if-nez v0, :cond_1c

    .line 127
    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, mClipdata:Landroid/content/ClipData;

    .line 129
    :cond_1c
    iget-object v0, p0, mClipdata:Landroid/content/ClipData;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 130
    iget-boolean v0, p0, mIsProtected:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 131
    return-void
.end method
