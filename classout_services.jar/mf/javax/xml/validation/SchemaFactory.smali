.class public abstract Lmf/javax/xml/validation/SchemaFactory;
.super Ljava/lang/Object;
.source "SchemaFactory.java"


# static fields
.field private static ss:Lmf/javax/xml/validation/SecuritySupport;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 133
    new-instance v0, Lmf/javax/xml/validation/SecuritySupport;

    invoke-direct {v0}, Lmf/javax/xml/validation/SecuritySupport;-><init>()V

    sput-object v0, ss:Lmf/javax/xml/validation/SecuritySupport;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method

.method public static final newInstance(Ljava/lang/String;)Lmf/javax/xml/validation/SchemaFactory;
    .registers 6
    .param p0, "schemaLanguage"    # Ljava/lang/String;

    .prologue
    .line 214
    sget-object v2, ss:Lmf/javax/xml/validation/SecuritySupport;

    invoke-virtual {v2}, Lmf/javax/xml/validation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 216
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_e

    .line 219
    const-class v2, Lmf/javax/xml/validation/SchemaFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 222
    :cond_e
    new-instance v2, Lmf/javax/xml/validation/SchemaFactoryFinder;

    invoke-direct {v2, v0}, Lmf/javax/xml/validation/SchemaFactoryFinder;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v2, p0}, Lmf/javax/xml/validation/SchemaFactoryFinder;->newFactory(Ljava/lang/String;)Lmf/javax/xml/validation/SchemaFactory;

    move-result-object v1

    .line 223
    .local v1, "f":Lmf/javax/xml/validation/SchemaFactory;
    if-nez v1, :cond_34

    .line 224
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No SchemaFactory that implements the schema language specified by: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 227
    const-string v4, " could be loaded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 225
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    :cond_34
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/validation/SchemaFactory;
    .registers 8
    .param p0, "schemaLanguage"    # Ljava/lang/String;
    .param p1, "factoryClassName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 275
    move-object v0, p2

    .line 277
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_9

    .line 278
    sget-object v2, ss:Lmf/javax/xml/validation/SecuritySupport;

    invoke-virtual {v2}, Lmf/javax/xml/validation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 281
    :cond_9
    new-instance v2, Lmf/javax/xml/validation/SchemaFactoryFinder;

    invoke-direct {v2, v0}, Lmf/javax/xml/validation/SchemaFactoryFinder;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v2, p1}, Lmf/javax/xml/validation/SchemaFactoryFinder;->createInstance(Ljava/lang/String;)Lmf/javax/xml/validation/SchemaFactory;

    move-result-object v1

    .line 282
    .local v1, "f":Lmf/javax/xml/validation/SchemaFactory;
    if-nez v1, :cond_33

    .line 283
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Factory "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 285
    const-string v4, " could not be loaded to implement the schema language specified by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 284
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 288
    :cond_33
    invoke-virtual {v1, p0}, isSchemaLanguageSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 289
    return-object v1

    .line 291
    :cond_3a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Factory "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 293
    const-string v4, " does not implement the schema language specified by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 292
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public abstract getErrorHandler()Lorg/xml/sax/ErrorHandler;
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 338
    if-nez p1, :cond_b

    .line 339
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the name parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_b
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 460
    if-nez p1, :cond_b

    .line 461
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the name parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_b
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getResourceResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;
.end method

.method public abstract isSchemaLanguageSupported(Ljava/lang/String;)Z
.end method

.method public abstract newSchema()Lmf/javax/xml/validation/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public newSchema(Ljava/io/File;)Lmf/javax/xml/validation/Schema;
    .registers 3
    .param p1, "schema"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 627
    new-instance v0, Lmf/javax/xml/transform/stream/StreamSource;

    invoke-direct {v0, p1}, Lmf/javax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, newSchema(Lmf/javax/xml/transform/Source;)Lmf/javax/xml/validation/Schema;

    move-result-object v0

    return-object v0
.end method

.method public newSchema(Ljava/net/URL;)Lmf/javax/xml/validation/Schema;
    .registers 4
    .param p1, "schema"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 643
    new-instance v0, Lmf/javax/xml/transform/stream/StreamSource;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmf/javax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, newSchema(Lmf/javax/xml/transform/Source;)Lmf/javax/xml/validation/Schema;

    move-result-object v0

    return-object v0
.end method

.method public newSchema(Lmf/javax/xml/transform/Source;)Lmf/javax/xml/validation/Schema;
    .registers 4
    .param p1, "schema"    # Lmf/javax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 611
    const/4 v0, 0x1

    new-array v0, v0, [Lmf/javax/xml/transform/Source;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, newSchema([Lmf/javax/xml/transform/Source;)Lmf/javax/xml/validation/Schema;

    move-result-object v0

    return-object v0
.end method

.method public abstract newSchema([Lmf/javax/xml/transform/Source;)Lmf/javax/xml/validation/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 396
    if-nez p1, :cond_b

    .line 397
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the name parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_b
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 425
    if-nez p1, :cond_b

    .line 426
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the name parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_b
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V
.end method
