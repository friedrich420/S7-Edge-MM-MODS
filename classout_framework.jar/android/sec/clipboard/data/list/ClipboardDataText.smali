.class public Landroid/sec/clipboard/data/list/ClipboardDataText;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataText.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardDataText"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient mText:Ljava/lang/CharSequence;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 45
    const-string v0, ""

    iput-object v0, p0, mValue:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, mText:Ljava/lang/CharSequence;

    .line 50
    return-void
.end method


# virtual methods
.method public GetText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 140
    invoke-virtual {p0}, getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 6
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 84
    .local v0, "Result":Z
    if-eqz v0, :cond_f

    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_11

    .line 85
    :cond_f
    const/4 v1, 0x0

    .line 99
    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_10
    return v1

    .line 88
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_11
    packed-switch p1, :pswitch_data_2a

    .line 96
    :pswitch_14
    const/4 v0, 0x0

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_15
    move v1, v0

    .line 99
    goto :goto_10

    .line 90
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_17
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, setText(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 91
    goto :goto_15

    .line 93
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_20
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setHtml(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 94
    goto :goto_15

    .line 88
    nop

    :pswitch_data_2a
    .packed-switch 0x2
        :pswitch_17
        :pswitch_14
        :pswitch_20
    .end packed-switch
.end method

.method public SetText(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, setText(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public clearData()V
    .registers 2

    .prologue
    .line 108
    const-string v0, ""

    iput-object v0, p0, mText:Ljava/lang/CharSequence;

    .line 109
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 167
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_c

    .line 168
    const-string v2, "ClipboardDataText"

    const-string/jumbo v3, "text equals"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_c
    const/4 v0, 0x0

    .line 171
    .local v0, "Result":Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 179
    .end local v0    # "Result":Z
    :cond_13
    :goto_13
    return v0

    .line 175
    .restart local v0    # "Result":Z
    :cond_14
    instance-of v2, p1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    if-eqz v2, :cond_13

    move-object v1, p1

    .line 178
    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 179
    .local v1, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_32

    const/4 v2, 0x1

    :goto_30
    move v0, v2

    goto :goto_13

    :cond_32
    const/4 v2, 0x0

    goto :goto_30
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isValidData()Z
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    .line 154
    const/4 v0, 0x0

    .line 156
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
    .line 232
    return-void
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 214
    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, mText:Ljava/lang/CharSequence;

    .line 215
    const-class v0, Landroid/content/ClipData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 216
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    .line 217
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/high16 v2, 0x20000

    const/4 v0, 0x0

    .line 124
    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    .line 133
    :cond_f
    :goto_f
    return v0

    .line 128
    :cond_10
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v2, :cond_1a

    .line 129
    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 132
    :cond_1a
    iput-object p1, p0, mText:Ljava/lang/CharSequence;

    .line 133
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public toLoad()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, mValue:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 57
    iget-object v0, p0, mValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, mText:Ljava/lang/CharSequence;

    .line 59
    :cond_c
    return-void
.end method

.method public toSave()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_14

    .line 66
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_15

    .line 67
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mValue:Ljava/lang/String;

    .line 72
    :cond_14
    :goto_14
    return-void

    .line 69
    :cond_15
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mValue:Ljava/lang/String;

    goto :goto_14
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x14

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "this Text class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2a

    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v3, :cond_2a

    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    goto :goto_21
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 190
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_c

    .line 191
    const-string v2, "ClipboardDataText"

    const-string/jumbo v3, "text write to parcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 195
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    if-nez v2, :cond_2c

    .line 196
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "text/plain"

    aput-object v3, v1, v2

    .line 197
    .local v1, "mimeType":[Ljava/lang/String;
    new-instance v0, Landroid/content/ClipData$Item;

    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    invoke-direct {v0, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 198
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v2, Landroid/content/ClipData;

    const-string v3, "clipboarddragNdrop"

    invoke-direct {v2, v3, v1, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    iput-object v2, p0, mClipdata:Landroid/content/ClipData;

    .line 201
    .end local v0    # "item":Landroid/content/ClipData$Item;
    .end local v1    # "mimeType":[Ljava/lang/String;
    :cond_2c
    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 202
    iget-object v2, p0, mClipdata:Landroid/content/ClipData;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 203
    iget-boolean v2, p0, mIsProtected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 204
    return-void
.end method
