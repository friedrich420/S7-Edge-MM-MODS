.class public abstract Lmf/javax/xml/parsers/SAXParser;
.super Ljava/lang/Object;
.source "SAXParser.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method


# virtual methods
.method public abstract getParser()Lorg/xml/sax/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation
.end method

.method public getSchema()Lmf/javax/xml/validation/Schema;
    .registers 4

    .prologue
    .line 519
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This parser does not support specification \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 522
    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 523
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 524
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 520
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getXMLReader()Lorg/xml/sax/XMLReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract isNamespaceAware()Z
.end method

.method public abstract isValidating()Z
.end method

.method public isXIncludeAware()Z
    .registers 4

    .prologue
    .line 544
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This parser does not support specification \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 547
    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 548
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 549
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 545
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Ljava/io/File;Lorg/xml/sax/HandlerBase;)V
    .registers 6
    .param p1, "f"    # Ljava/io/File;
    .param p2, "hb"    # Lorg/xml/sax/HandlerBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    if-nez p1, :cond_a

    .line 315
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "File cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_a
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0, p2}, parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V

    .line 323
    return-void
.end method

.method public parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    .registers 6
    .param p1, "f"    # Ljava/io/File;
    .param p2, "dh"    # Lorg/xml/sax/helpers/DefaultHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    if-nez p1, :cond_a

    .line 341
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "File cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    :cond_a
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0, p2}, parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 349
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/HandlerBase;)V
    .registers 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "hb"    # Lorg/xml/sax/HandlerBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    if-nez p1, :cond_a

    .line 155
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "InputStream cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_a
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 159
    .local v0, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0, p2}, parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V

    .line 160
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/HandlerBase;Ljava/lang/String;)V
    .registers 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "hb"    # Lorg/xml/sax/HandlerBase;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    if-nez p1, :cond_a

    .line 186
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "InputStream cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_a
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 190
    .local v0, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {v0, p3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, v0, p2}, parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V

    .line 192
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    .registers 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "dh"    # Lorg/xml/sax/helpers/DefaultHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    if-nez p1, :cond_a

    .line 211
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "InputStream cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_a
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 215
    .local v0, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0, p2}, parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 216
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;Ljava/lang/String;)V
    .registers 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "dh"    # Lorg/xml/sax/helpers/DefaultHandler;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    if-nez p1, :cond_a

    .line 239
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "InputStream cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_a
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 243
    .local v0, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {v0, p3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0, v0, p2}, parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 245
    return-void
.end method

.method public parse(Ljava/lang/String;Lorg/xml/sax/HandlerBase;)V
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "hb"    # Lorg/xml/sax/HandlerBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    if-nez p1, :cond_b

    .line 266
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "uri cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_b
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0, p2}, parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V

    .line 271
    return-void
.end method

.method public parse(Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)V
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "dh"    # Lorg/xml/sax/helpers/DefaultHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    if-nez p1, :cond_b

    .line 290
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "uri cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_b
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "input":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0, p2}, parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 295
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V
    .registers 6
    .param p1, "is"    # Lorg/xml/sax/InputSource;
    .param p2, "hb"    # Lorg/xml/sax/HandlerBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    if-nez p1, :cond_a

    .line 371
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "InputSource cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    :cond_a
    invoke-virtual {p0}, getParser()Lorg/xml/sax/Parser;

    move-result-object v0

    .line 375
    .local v0, "parser":Lorg/xml/sax/Parser;
    if-eqz p2, :cond_1c

    .line 376
    invoke-interface {v0, p2}, Lorg/xml/sax/Parser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    .line 377
    invoke-interface {v0, p2}, Lorg/xml/sax/Parser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 378
    invoke-interface {v0, p2}, Lorg/xml/sax/Parser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 379
    invoke-interface {v0, p2}, Lorg/xml/sax/Parser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 381
    :cond_1c
    invoke-interface {v0, p1}, Lorg/xml/sax/Parser;->parse(Lorg/xml/sax/InputSource;)V

    .line 382
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    .registers 6
    .param p1, "is"    # Lorg/xml/sax/InputSource;
    .param p2, "dh"    # Lorg/xml/sax/helpers/DefaultHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    if-nez p1, :cond_a

    .line 402
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "InputSource cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    :cond_a
    invoke-virtual {p0}, getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 406
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    if-eqz p2, :cond_1c

    .line 407
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 408
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 409
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 410
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 412
    :cond_1c
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 413
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This SAXParser, \""

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

    .line 131
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

    .line 132
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

    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation
.end method
