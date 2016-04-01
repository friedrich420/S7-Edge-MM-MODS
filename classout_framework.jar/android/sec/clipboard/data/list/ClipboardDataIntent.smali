.class public Landroid/sec/clipboard/data/list/ClipboardDataIntent;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataIntent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardDataIntent"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 41
    const-string v0, ""

    iput-object v0, p0, mValue:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public GetIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 118
    invoke-virtual {p0}, getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 7
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v3, 0x1

    .line 57
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 59
    .local v0, "Result":Z
    if-eqz v0, :cond_f

    iget-object v2, p0, mValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_11

    .line 60
    :cond_f
    const/4 v2, 0x0

    .line 76
    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_10
    return v2

    .line 63
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_11
    packed-switch p1, :pswitch_data_2c

    .line 73
    const/4 v0, 0x0

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_15
    move v2, v0

    .line 76
    goto :goto_10

    .line 66
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_17
    :try_start_17
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v2, p0, mValue:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p2, v2}, setIntent(Landroid/content/Intent;)Z
    :try_end_23
    .catch Ljava/net/URISyntaxException; {:try_start_17 .. :try_end_23} :catch_25

    move-result v0

    goto :goto_15

    .line 67
    :catch_25
    move-exception v1

    .line 68
    .local v1, "e":Ljava/net/URISyntaxException;
    const/4 v0, 0x0

    .line 69
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_15

    .line 63
    nop

    :pswitch_data_2c
    .packed-switch 0x6
        :pswitch_17
    .end packed-switch
.end method

.method public SetIntent(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, setIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public clearData()V
    .registers 2

    .prologue
    .line 85
    const-string v0, ""

    iput-object v0, p0, mValue:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 152
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_c

    .line 153
    const-string v4, "ClipboardDataIntent"

    const-string v5, "intent equals"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_c
    const/4 v0, 0x0

    .line 156
    .local v0, "Result":Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    move v1, v0

    .line 168
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_14
    return v1

    .line 160
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_15
    instance-of v4, p1, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    if-nez v4, :cond_1b

    move v1, v0

    .line 161
    .restart local v1    # "Result":I
    goto :goto_14

    .end local v1    # "Result":I
    :cond_1b
    move-object v2, p1

    .line 164
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .line 165
    .local v2, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    if-eqz v2, :cond_37

    invoke-virtual {v2}, getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 166
    iget-object v4, p0, mValue:Ljava/lang/String;

    invoke-virtual {v2}, getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_39

    move v0, v3

    :cond_37
    :goto_37
    move v1, v0

    .line 168
    .restart local v1    # "Result":I
    goto :goto_14

    .line 166
    .end local v1    # "Result":I
    :cond_39
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 5

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 128
    .local v1, "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v2, p0, mValue:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_7} :catch_9

    move-result-object v1

    .line 133
    :goto_8
    return-object v1

    .line 129
    :catch_9
    move-exception v0

    .line 131
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_8
.end method

.method public isValidData()Z
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, mValue:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 139
    const/4 v0, 0x0

    .line 141
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
    .line 236
    return-void
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 211
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, mValue:Ljava/lang/String;

    .line 214
    :try_start_e
    const-class v1, Landroid/content/ClipData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 215
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    .line 216
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v1, :cond_4c

    .line 217
    const-string v1, "ClipboardDataIntent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipboardDataIntent : readFromSource : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4c} :catch_4d

    .line 222
    :cond_4c
    :goto_4c
    return-void

    .line 219
    :catch_4d
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ClipboardDataIntent"

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

    goto :goto_4c
.end method

.method public setIntent(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 105
    if-eqz p1, :cond_d

    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 106
    :cond_d
    const/4 v0, 0x0

    .line 109
    :goto_e
    return v0

    .line 108
    :cond_f
    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mValue:Ljava/lang/String;

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x14

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "this Intent class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_26

    iget-object v0, p0, mValue:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    iget-object v0, p0, mValue:Ljava/lang/String;

    goto :goto_1d
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x1

    .line 179
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_c

    .line 180
    const-string v4, "ClipboardDataIntent"

    const-string v5, "Intent write to parcel"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 184
    const/4 v1, 0x0

    .line 186
    .local v1, "intent":Landroid/content/Intent;
    :try_start_10
    iget-object v4, p0, mValue:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_16
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_16} :catch_45

    move-result-object v1

    .line 192
    :goto_17
    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    if-nez v4, :cond_31

    .line 193
    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "text/vnd.android.intent"

    aput-object v5, v3, v4

    .line 194
    .local v3, "mimeType":[Ljava/lang/String;
    new-instance v2, Landroid/content/ClipData$Item;

    invoke-direct {v2, v1}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    .line 195
    .local v2, "item":Landroid/content/ClipData$Item;
    new-instance v4, Landroid/content/ClipData;

    const-string v5, "clipboarddragNdrop"

    invoke-direct {v4, v5, v3, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    iput-object v4, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 198
    .end local v2    # "item":Landroid/content/ClipData$Item;
    .end local v3    # "mimeType":[Ljava/lang/String;
    :cond_31
    iget-object v4, p0, mValue:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 199
    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 200
    iget-boolean v4, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 201
    return-void

    .line 187
    :catch_45
    move-exception v0

    .line 189
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_17
.end method
