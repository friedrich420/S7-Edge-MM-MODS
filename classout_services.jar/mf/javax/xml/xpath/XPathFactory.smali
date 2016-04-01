.class public abstract Lmf/javax/xml/xpath/XPathFactory;
.super Ljava/lang/Object;
.source "XPathFactory.java"


# static fields
.field public static final DEFAULT_OBJECT_MODEL_URI:Ljava/lang/String; = "http://java.sun.com/jaxp/xpath/dom"

.field public static final DEFAULT_PROPERTY_NAME:Ljava/lang/String; = "javax.xml.xpath.XPathFactory"

.field private static ss:Lmf/javax/xml/xpath/SecuritySupport;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    new-instance v0, Lmf/javax/xml/xpath/SecuritySupport;

    invoke-direct {v0}, Lmf/javax/xml/xpath/SecuritySupport;-><init>()V

    sput-object v0, ss:Lmf/javax/xml/xpath/SecuritySupport;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public static final newInstance()Lmf/javax/xml/xpath/XPathFactory;
    .registers 4

    .prologue
    .line 116
    :try_start_0
    const-string/jumbo v1, "http://java.sun.com/jaxp/xpath/dom"

    invoke-static {v1}, newInstance(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathFactory;
    :try_end_6
    .catch Lmf/javax/xml/xpath/XPathFactoryConfigurationException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v1

    return-object v1

    .line 117
    :catch_8
    move-exception v0

    .line 118
    .local v0, "xpathFactoryConfigurationException":Lmf/javax/xml/xpath/XPathFactoryConfigurationException;
    new-instance v1, Ljava/lang/RuntimeException;

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "XPathFactory#newInstance() failed to create an XPathFactory for the default object model: http://java.sun.com/jaxp/xpath/dom with the XPathFactoryConfigurationException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final newInstance(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathFactory;
    .registers 6
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    .prologue
    .line 183
    if-nez p0, :cond_a

    .line 184
    new-instance v2, Ljava/lang/NullPointerException;

    .line 185
    const-string v3, "XPathFactory#newInstance(String uri) cannot be called with uri == null"

    .line 184
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_18

    .line 190
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 191
    const-string v3, "XPathFactory#newInstance(String uri) cannot be called with uri == \"\""

    .line 190
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    :cond_18
    sget-object v2, ss:Lmf/javax/xml/xpath/SecuritySupport;

    invoke-virtual {v2}, Lmf/javax/xml/xpath/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 197
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_26

    .line 199
    const-class v2, Lmf/javax/xml/xpath/XPathFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 202
    :cond_26
    new-instance v2, Lmf/javax/xml/xpath/XPathFactoryFinder;

    invoke-direct {v2, v0}, Lmf/javax/xml/xpath/XPathFactoryFinder;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v2, p0}, Lmf/javax/xml/xpath/XPathFactoryFinder;->newFactory(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathFactory;

    move-result-object v1

    .line 204
    .local v1, "xpathFactory":Lmf/javax/xml/xpath/XPathFactory;
    if-nez v1, :cond_46

    .line 205
    new-instance v2, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No XPathFactory implementation found for the object model: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 206
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-direct {v2, v3}, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 211
    :cond_46
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/xpath/XPathFactory;
    .registers 8
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "factoryClassName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    .prologue
    .line 262
    move-object v0, p2

    .line 264
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez p0, :cond_b

    .line 265
    new-instance v2, Ljava/lang/NullPointerException;

    .line 266
    const-string v3, "XPathFactory#newInstance(String uri) cannot be called with uri == null"

    .line 265
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_19

    .line 271
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 272
    const-string v3, "XPathFactory#newInstance(String uri) cannot be called with uri == \"\""

    .line 271
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 276
    :cond_19
    if-nez v0, :cond_21

    .line 277
    sget-object v2, ss:Lmf/javax/xml/xpath/SecuritySupport;

    invoke-virtual {v2}, Lmf/javax/xml/xpath/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 280
    :cond_21
    new-instance v2, Lmf/javax/xml/xpath/XPathFactoryFinder;

    invoke-direct {v2, v0}, Lmf/javax/xml/xpath/XPathFactoryFinder;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v2, p1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathFactory;

    move-result-object v1

    .line 282
    .local v1, "f":Lmf/javax/xml/xpath/XPathFactory;
    if-nez v1, :cond_41

    .line 283
    new-instance v2, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No XPathFactory implementation found for the object model: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 284
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-direct {v2, v3}, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    :cond_41
    invoke-virtual {v1, p0}, isObjectModelSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 290
    return-object v1

    .line 292
    :cond_48
    new-instance v2, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Factory "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t support given "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " object model"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public abstract getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation
.end method

.method public abstract isObjectModelSupported(Ljava/lang/String;)Z
.end method

.method public abstract newXPath()Lmf/javax/xml/xpath/XPath;
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation
.end method

.method public abstract setXPathFunctionResolver(Lmf/javax/xml/xpath/XPathFunctionResolver;)V
.end method

.method public abstract setXPathVariableResolver(Lmf/javax/xml/xpath/XPathVariableResolver;)V
.end method
