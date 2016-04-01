.class public Lmf/org/apache/xerces/dom/DOMInputImpl;
.super Ljava/lang/Object;
.source "DOMInputImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/ls/LSInput;


# instance fields
.field protected fBaseSystemId:Ljava/lang/String;

.field protected fByteStream:Ljava/io/InputStream;

.field protected fCertifiedText:Z

.field protected fCharStream:Ljava/io/Reader;

.field protected fData:Ljava/lang/String;

.field protected fEncoding:Ljava/lang/String;

.field protected fPublicId:Ljava/lang/String;

.field protected fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, fPublicId:Ljava/lang/String;

    .line 68
    iput-object v0, p0, fSystemId:Ljava/lang/String;

    .line 69
    iput-object v0, p0, fBaseSystemId:Ljava/lang/String;

    .line 71
    iput-object v0, p0, fByteStream:Ljava/io/InputStream;

    .line 72
    iput-object v0, p0, fCharStream:Ljava/io/Reader;

    .line 73
    iput-object v0, p0, fData:Ljava/lang/String;

    .line 75
    iput-object v0, p0, fEncoding:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, fCertifiedText:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .param p3, "baseSystemId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, fPublicId:Ljava/lang/String;

    .line 68
    iput-object v0, p0, fSystemId:Ljava/lang/String;

    .line 69
    iput-object v0, p0, fBaseSystemId:Ljava/lang/String;

    .line 71
    iput-object v0, p0, fByteStream:Ljava/io/InputStream;

    .line 72
    iput-object v0, p0, fCharStream:Ljava/io/Reader;

    .line 73
    iput-object v0, p0, fData:Ljava/lang/String;

    .line 75
    iput-object v0, p0, fEncoding:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, fCertifiedText:Z

    .line 105
    iput-object p1, p0, fPublicId:Ljava/lang/String;

    .line 106
    iput-object p2, p0, fSystemId:Ljava/lang/String;

    .line 107
    iput-object p3, p0, fBaseSystemId:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 7
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .param p3, "baseSystemId"    # Ljava/lang/String;
    .param p4, "byteStream"    # Ljava/io/InputStream;
    .param p5, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, fPublicId:Ljava/lang/String;

    .line 68
    iput-object v0, p0, fSystemId:Ljava/lang/String;

    .line 69
    iput-object v0, p0, fBaseSystemId:Ljava/lang/String;

    .line 71
    iput-object v0, p0, fByteStream:Ljava/io/InputStream;

    .line 72
    iput-object v0, p0, fCharStream:Ljava/io/Reader;

    .line 73
    iput-object v0, p0, fData:Ljava/lang/String;

    .line 75
    iput-object v0, p0, fEncoding:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, fCertifiedText:Z

    .line 131
    iput-object p1, p0, fPublicId:Ljava/lang/String;

    .line 132
    iput-object p2, p0, fSystemId:Ljava/lang/String;

    .line 133
    iput-object p3, p0, fBaseSystemId:Ljava/lang/String;

    .line 134
    iput-object p4, p0, fByteStream:Ljava/io/InputStream;

    .line 135
    iput-object p5, p0, fEncoding:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V
    .registers 7
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .param p3, "baseSystemId"    # Ljava/lang/String;
    .param p4, "charStream"    # Ljava/io/Reader;
    .param p5, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, fPublicId:Ljava/lang/String;

    .line 68
    iput-object v0, p0, fSystemId:Ljava/lang/String;

    .line 69
    iput-object v0, p0, fBaseSystemId:Ljava/lang/String;

    .line 71
    iput-object v0, p0, fByteStream:Ljava/io/InputStream;

    .line 72
    iput-object v0, p0, fCharStream:Ljava/io/Reader;

    .line 73
    iput-object v0, p0, fData:Ljava/lang/String;

    .line 75
    iput-object v0, p0, fEncoding:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, fCertifiedText:Z

    .line 160
    iput-object p1, p0, fPublicId:Ljava/lang/String;

    .line 161
    iput-object p2, p0, fSystemId:Ljava/lang/String;

    .line 162
    iput-object p3, p0, fBaseSystemId:Ljava/lang/String;

    .line 163
    iput-object p4, p0, fCharStream:Ljava/io/Reader;

    .line 164
    iput-object p5, p0, fEncoding:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .param p3, "baseSystemId"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;
    .param p5, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, fPublicId:Ljava/lang/String;

    .line 68
    iput-object v0, p0, fSystemId:Ljava/lang/String;

    .line 69
    iput-object v0, p0, fBaseSystemId:Ljava/lang/String;

    .line 71
    iput-object v0, p0, fByteStream:Ljava/io/InputStream;

    .line 72
    iput-object v0, p0, fCharStream:Ljava/io/Reader;

    .line 73
    iput-object v0, p0, fData:Ljava/lang/String;

    .line 75
    iput-object v0, p0, fEncoding:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, fCertifiedText:Z

    .line 188
    iput-object p1, p0, fPublicId:Ljava/lang/String;

    .line 189
    iput-object p2, p0, fSystemId:Ljava/lang/String;

    .line 190
    iput-object p3, p0, fBaseSystemId:Ljava/lang/String;

    .line 191
    iput-object p4, p0, fData:Ljava/lang/String;

    .line 192
    iput-object p5, p0, fEncoding:Ljava/lang/String;

    .line 193
    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, fBaseSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getByteStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, fByteStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getCertifiedText()Z
    .registers 2

    .prologue
    .line 376
    iget-boolean v0, p0, fCertifiedText:Z

    return v0
.end method

.method public getCharacterStream()Ljava/io/Reader;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, fCharStream:Ljava/io/Reader;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, fEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, fPublicId:Ljava/lang/String;

    return-object v0
.end method

.method public getStringData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, fData:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, fSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .registers 2
    .param p1, "baseURI"    # Ljava/lang/String;

    .prologue
    .line 367
    iput-object p1, p0, fBaseSystemId:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setByteStream(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "byteStream"    # Ljava/io/InputStream;

    .prologue
    .line 222
    iput-object p1, p0, fByteStream:Ljava/io/InputStream;

    .line 223
    return-void
.end method

.method public setCertifiedText(Z)V
    .registers 2
    .param p1, "certifiedText"    # Z

    .prologue
    .line 386
    iput-boolean p1, p0, fCertifiedText:Z

    .line 387
    return-void
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .registers 2
    .param p1, "characterStream"    # Ljava/io/Reader;

    .prologue
    .line 246
    iput-object p1, p0, fCharStream:Ljava/io/Reader;

    .line 247
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, fEncoding:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .registers 2
    .param p1, "publicId"    # Ljava/lang/String;

    .prologue
    .line 315
    iput-object p1, p0, fPublicId:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setStringData(Ljava/lang/String;)V
    .registers 2
    .param p1, "stringData"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, fData:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .registers 2
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 350
    iput-object p1, p0, fSystemId:Ljava/lang/String;

    .line 351
    return-void
.end method
