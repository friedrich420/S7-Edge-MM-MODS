.class public abstract Lmf/javax/xml/parsers/SAXParserFactory;
.super Ljava/lang/Object;
.source "SAXParserFactory.java"


# static fields
.field private static final DEFAULT_PROPERTY_NAME:Ljava/lang/String; = "javax.xml.parsers.SAXParserFactory"


# instance fields
.field private namespaceAware:Z

.field private validating:Z


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v0, p0, validating:Z

    .line 75
    iput-boolean v0, p0, namespaceAware:Z

    .line 82
    return-void
.end method

.method public static newInstance()Lmf/javax/xml/parsers/SAXParserFactory;
    .registers 4

    .prologue
    .line 147
    :try_start_0
    const-string/jumbo v1, "javax.xml.parsers.SAXParserFactory"

    .line 149
    const-string v2, "com.sun.org.apache.xerces.internal.jaxp.SAXParserFactoryImpl"

    .line 145
    invoke-static {v1, v2}, Lmf/javax/xml/parsers/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/parsers/SAXParserFactory;
    :try_end_b
    .catch Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    .line 150
    :catch_c
    move-exception v0

    .line 151
    .local v0, "e":Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;
    new-instance v1, Lmf/javax/xml/parsers/FactoryConfigurationError;

    invoke-virtual {v0}, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 152
    invoke-virtual {v0}, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-direct {v1, v2, v3}, Lmf/javax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/parsers/SAXParserFactory;
    .registers 6
    .param p0, "factoryClassName"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 193
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, p1, v1}, Lmf/javax/xml/parsers/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/parsers/SAXParserFactory;
    :try_end_7
    .catch Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError; {:try_start_1 .. :try_end_7} :catch_8

    return-object v1

    .line 194
    :catch_8
    move-exception v0

    .line 195
    .local v0, "e":Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;
    new-instance v1, Lmf/javax/xml/parsers/FactoryConfigurationError;

    invoke-virtual {v0}, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 196
    invoke-virtual {v0}, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-direct {v1, v2, v3}, Lmf/javax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation
.end method

.method public getSchema()Lmf/javax/xml/validation/Schema;
    .registers 4

    .prologue
    .line 370
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This parser does not support specification \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 373
    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 374
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 375
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 371
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNamespaceAware()Z
    .registers 2

    .prologue
    .line 266
    iget-boolean v0, p0, namespaceAware:Z

    return v0
.end method

.method public isValidating()Z
    .registers 2

    .prologue
    .line 278
    iget-boolean v0, p0, validating:Z

    return v0
.end method

.method public isXIncludeAware()Z
    .registers 4

    .prologue
    .line 483
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This parser does not support specification \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 486
    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 487
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 488
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 484
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract newSAXParser()Lmf/javax/xml/parsers/SAXParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation
.end method

.method public setNamespaceAware(Z)V
    .registers 2
    .param p1, "awareness"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, namespaceAware:Z

    .line 226
    return-void
.end method

.method public setSchema(Lmf/javax/xml/validation/Schema;)V
    .registers 5
    .param p1, "schema"    # Lmf/javax/xml/validation/Schema;

    .prologue
    .line 438
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This parser does not support specification \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 441
    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 442
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 443
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 439
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValidating(Z)V
    .registers 2
    .param p1, "validating"    # Z

    .prologue
    .line 254
    iput-boolean p1, p0, validating:Z

    .line 255
    return-void
.end method

.method public setXIncludeAware(Z)V
    .registers 5
    .param p1, "state"    # Z

    .prologue
    .line 465
    if-eqz p1, :cond_1b

    .line 466
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " setXIncludeAware is not supported on this JAXP implementation or earlier: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 466
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_1b
    return-void
.end method
