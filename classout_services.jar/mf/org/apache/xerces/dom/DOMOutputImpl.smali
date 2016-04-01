.class public Lmf/org/apache/xerces/dom/DOMOutputImpl;
.super Ljava/lang/Object;
.source "DOMOutputImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/ls/LSOutput;


# instance fields
.field protected fByteStream:Ljava/io/OutputStream;

.field protected fCharStream:Ljava/io/Writer;

.field protected fEncoding:Ljava/lang/String;

.field protected fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, fCharStream:Ljava/io/Writer;

    .line 57
    iput-object v0, p0, fByteStream:Ljava/io/OutputStream;

    .line 58
    iput-object v0, p0, fSystemId:Ljava/lang/String;

    .line 59
    iput-object v0, p0, fEncoding:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public getByteStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, fByteStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getCharacterStream()Ljava/io/Writer;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, fCharStream:Ljava/io/Writer;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, fEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, fSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public setByteStream(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "byteStream"    # Ljava/io/OutputStream;

    .prologue
    .line 111
    iput-object p1, p0, fByteStream:Ljava/io/OutputStream;

    .line 112
    return-void
.end method

.method public setCharacterStream(Ljava/io/Writer;)V
    .registers 2
    .param p1, "characterStream"    # Ljava/io/Writer;

    .prologue
    .line 87
    iput-object p1, p0, fCharStream:Ljava/io/Writer;

    .line 88
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, fEncoding:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .registers 2
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, fSystemId:Ljava/lang/String;

    .line 138
    return-void
.end method
