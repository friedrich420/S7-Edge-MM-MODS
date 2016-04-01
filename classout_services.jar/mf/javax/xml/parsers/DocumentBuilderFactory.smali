.class public abstract Lmf/javax/xml/parsers/DocumentBuilderFactory;
.super Ljava/lang/Object;
.source "DocumentBuilderFactory.java"


# static fields
.field private static final DEFAULT_PROPERTY_NAME:Ljava/lang/String; = "javax.xml.parsers.DocumentBuilderFactory"


# instance fields
.field private canonicalState:Z

.field private coalescing:Z

.field private expandEntityRef:Z

.field private ignoreComments:Z

.field private namespaceAware:Z

.field private validating:Z

.field private whitespace:Z


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v1, p0, validating:Z

    .line 66
    iput-boolean v1, p0, namespaceAware:Z

    .line 67
    iput-boolean v1, p0, whitespace:Z

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, expandEntityRef:Z

    .line 69
    iput-boolean v1, p0, ignoreComments:Z

    .line 70
    iput-boolean v1, p0, coalescing:Z

    .line 72
    iput-boolean v1, p0, canonicalState:Z

    .line 79
    return-void
.end method

.method public static newInstance()Lmf/javax/xml/parsers/DocumentBuilderFactory;
    .registers 4

    .prologue
    .line 142
    :try_start_0
    const-string/jumbo v1, "javax.xml.parsers.DocumentBuilderFactory"

    .line 144
    const-string v2, "com.sun.org.apache.xerces.internal.jaxp.DocumentBuilderFactoryImpl"

    .line 140
    invoke-static {v1, v2}, Lmf/javax/xml/parsers/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/parsers/DocumentBuilderFactory;
    :try_end_b
    .catch Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    .line 145
    :catch_c
    move-exception v0

    .line 146
    .local v0, "e":Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;
    new-instance v1, Lmf/javax/xml/parsers/FactoryConfigurationError;

    invoke-virtual {v0}, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 147
    invoke-virtual {v0}, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-direct {v1, v2, v3}, Lmf/javax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/parsers/DocumentBuilderFactory;
    .registers 6
    .param p0, "factoryClassName"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 189
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, p1, v1}, Lmf/javax/xml/parsers/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/parsers/DocumentBuilderFactory;
    :try_end_7
    .catch Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError; {:try_start_1 .. :try_end_7} :catch_8

    return-object v1

    .line 190
    :catch_8
    move-exception v0

    .line 191
    .local v0, "e":Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;
    new-instance v1, Lmf/javax/xml/parsers/FactoryConfigurationError;

    invoke-virtual {v0}, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 192
    invoke-virtual {v0}, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-direct {v1, v2, v3}, Lmf/javax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/ParserConfigurationException;
        }
    .end annotation
.end method

.method public getSchema()Lmf/javax/xml/validation/Schema;
    .registers 4

    .prologue
    .line 500
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This parser does not support specification \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 503
    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 504
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 505
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 501
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCoalescing()Z
    .registers 2

    .prologue
    .line 383
    iget-boolean v0, p0, coalescing:Z

    return v0
.end method

.method public isExpandEntityReferences()Z
    .registers 2

    .prologue
    .line 357
    iget-boolean v0, p0, expandEntityRef:Z

    return v0
.end method

.method public isIgnoringComments()Z
    .registers 2

    .prologue
    .line 369
    iget-boolean v0, p0, ignoreComments:Z

    return v0
.end method

.method public isIgnoringElementContentWhitespace()Z
    .registers 2

    .prologue
    .line 345
    iget-boolean v0, p0, whitespace:Z

    return v0
.end method

.method public isNamespaceAware()Z
    .registers 2

    .prologue
    .line 320
    iget-boolean v0, p0, namespaceAware:Z

    return v0
.end method

.method public isValidating()Z
    .registers 2

    .prologue
    .line 332
    iget-boolean v0, p0, validating:Z

    return v0
.end method

.method public isXIncludeAware()Z
    .registers 4

    .prologue
    .line 625
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This parser does not support specification \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 628
    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 629
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 630
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 626
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 625
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract newDocumentBuilder()Lmf/javax/xml/parsers/DocumentBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/ParserConfigurationException;
        }
    .end annotation
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public setCoalescing(Z)V
    .registers 2
    .param p1, "coalescing"    # Z

    .prologue
    .line 308
    iput-boolean p1, p0, coalescing:Z

    .line 309
    return-void
.end method

.method public setExpandEntityReferences(Z)V
    .registers 2
    .param p1, "expandEntityRef"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, expandEntityRef:Z

    .line 282
    return-void
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/ParserConfigurationException;
        }
    .end annotation
.end method

.method public setIgnoringComments(Z)V
    .registers 2
    .param p1, "ignoreComments"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, ignoreComments:Z

    .line 294
    return-void
.end method

.method public setIgnoringElementContentWhitespace(Z)V
    .registers 2
    .param p1, "whitespace"    # Z

    .prologue
    .line 268
    iput-boolean p1, p0, whitespace:Z

    .line 269
    return-void
.end method

.method public setNamespaceAware(Z)V
    .registers 2
    .param p1, "awareness"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, namespaceAware:Z

    .line 221
    return-void
.end method

.method public setSchema(Lmf/javax/xml/validation/Schema;)V
    .registers 5
    .param p1, "schema"    # Lmf/javax/xml/validation/Schema;

    .prologue
    .line 578
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This parser does not support specification \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 581
    const-string v2, "\" version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 582
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 583
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 579
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValidating(Z)V
    .registers 2
    .param p1, "validating"    # Z

    .prologue
    .line 249
    iput-boolean p1, p0, validating:Z

    .line 250
    return-void
.end method

.method public setXIncludeAware(Z)V
    .registers 5
    .param p1, "state"    # Z

    .prologue
    .line 607
    if-eqz p1, :cond_1b

    .line 608
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " setXIncludeAware is not supported on this JAXP implementation or earlier: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_1b
    return-void
.end method
