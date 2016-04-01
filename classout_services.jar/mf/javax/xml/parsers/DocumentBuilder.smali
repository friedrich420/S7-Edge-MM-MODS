.class public abstract Lmf/javax/xml/parsers/DocumentBuilder;
.super Ljava/lang/Object;
.source "DocumentBuilder.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method


# virtual methods
.method public abstract getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;
.end method

.method public getSchema()Lmf/javax/xml/validation/Schema;
    .registers 4

    .prologue
    .line 334
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This parser does not support specification \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 337
    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 338
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 339
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 335
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract isNamespaceAware()Z
.end method

.method public abstract isValidating()Z
.end method

.method public isXIncludeAware()Z
    .registers 4

    .prologue
    .line 360
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This parser does not support specification \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 363
    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 364
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 365
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 361
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract newDocument()Lmf/org/w3c/dom/Document;
.end method

.method public parse(Ljava/io/File;)Lmf/org/w3c/dom/Document;
    .registers 5
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    if-nez p1, :cond_a

    .line 218
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "File cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_a
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "in":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0}, parse(Lorg/xml/sax/InputSource;)Lmf/org/w3c/dom/Document;

    move-result-object v1

    return-object v1
.end method

.method public parse(Ljava/io/InputStream;)Lmf/org/w3c/dom/Document;
    .registers 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    if-nez p1, :cond_a

    .line 137
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "InputStream cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_a
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 141
    .local v0, "in":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0}, parse(Lorg/xml/sax/InputSource;)Lmf/org/w3c/dom/Document;

    move-result-object v1

    return-object v1
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;)Lmf/org/w3c/dom/Document;
    .registers 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    if-nez p1, :cond_a

    .line 165
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "InputStream cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_a
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 169
    .local v0, "in":Lorg/xml/sax/InputSource;
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, v0}, parse(Lorg/xml/sax/InputSource;)Lmf/org/w3c/dom/Document;

    move-result-object v1

    return-object v1
.end method

.method public parse(Ljava/lang/String;)Lmf/org/w3c/dom/Document;
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    if-nez p1, :cond_a

    .line 193
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_a
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "in":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0}, parse(Lorg/xml/sax/InputSource;)Lmf/org/w3c/dom/Document;

    move-result-object v1

    return-object v1
.end method

.method public abstract parse(Lorg/xml/sax/InputSource;)Lmf/org/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This DocumentBuilder, \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", does not support the reset functionality."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 111
    const-string v2, "  Specification \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    const-string v2, " version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setEntityResolver(Lorg/xml/sax/EntityResolver;)V
.end method

.method public abstract setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
.end method
