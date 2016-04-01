.class public abstract Lmf/javax/xml/stream/XMLOutputFactory;
.super Ljava/lang/Object;
.source "XMLOutputFactory.java"


# static fields
.field static final DEFAULIMPL:Ljava/lang/String; = "com.sun.xml.internal.stream.XMLOutputFactoryImpl"

.field public static final IS_REPAIRING_NAMESPACES:Ljava/lang/String; = "javax.xml.stream.isRepairingNamespaces"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newFactory()Lmf/javax/xml/stream/XMLOutputFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 173
    const-string/jumbo v0, "javax.xml.stream.XMLOutputFactory"

    .line 174
    const-string v1, "com.sun.xml.internal.stream.XMLOutputFactoryImpl"

    .line 173
    invoke-static {v0, v1}, Lmf/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/XMLOutputFactory;

    return-object v0
.end method

.method public static newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/stream/XMLOutputFactory;
    .registers 6
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 225
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, p1, v1}, Lmf/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/stream/XMLOutputFactory;
    :try_end_7
    .catch Lmf/javax/xml/stream/FactoryFinder$ConfigurationError; {:try_start_1 .. :try_end_7} :catch_8

    return-object v1

    .line 226
    :catch_8
    move-exception v0

    .line 227
    .local v0, "e":Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;
    new-instance v1, Lmf/javax/xml/stream/FactoryConfigurationError;

    invoke-virtual {v0}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 228
    invoke-virtual {v0}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-direct {v1, v2, v3}, Lmf/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/stream/XMLInputFactory;
    .registers 6
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, p1, v1}, Lmf/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/stream/XMLInputFactory;
    :try_end_7
    .catch Lmf/javax/xml/stream/FactoryFinder$ConfigurationError; {:try_start_1 .. :try_end_7} :catch_8

    return-object v1

    .line 197
    :catch_8
    move-exception v0

    .line 198
    .local v0, "e":Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;
    new-instance v1, Lmf/javax/xml/stream/FactoryConfigurationError;

    invoke-virtual {v0}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 199
    invoke-virtual {v0}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-direct {v1, v2, v3}, Lmf/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method

.method public static newInstance()Lmf/javax/xml/stream/XMLOutputFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 141
    const-string/jumbo v0, "javax.xml.stream.XMLOutputFactory"

    .line 142
    const-string v1, "com.sun.xml.internal.stream.XMLOutputFactoryImpl"

    .line 141
    invoke-static {v0, v1}, Lmf/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/XMLOutputFactory;

    return-object v0
.end method


# virtual methods
.method public abstract createXMLEventWriter(Ljava/io/OutputStream;)Lmf/javax/xml/stream/XMLEventWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lmf/javax/xml/stream/XMLEventWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventWriter(Ljava/io/Writer;)Lmf/javax/xml/stream/XMLEventWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventWriter(Lmf/javax/xml/transform/Result;)Lmf/javax/xml/stream/XMLEventWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamWriter(Ljava/io/OutputStream;)Lmf/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lmf/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamWriter(Ljava/io/Writer;)Lmf/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamWriter(Lmf/javax/xml/transform/Result;)Lmf/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract isPropertySupported(Ljava/lang/String;)Z
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
