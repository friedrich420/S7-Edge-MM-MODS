.class public Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;
.super Ljava/lang/Object;


# static fields
.field static class$com$sun$org$apache$xml$internal$security$utils$CachedXPathAPIHolder:Ljava/lang/Class;

.field static local:Ljava/lang/ThreadLocal;

.field static localDoc:Ljava/lang/ThreadLocal;

.field static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$utils$CachedXPathAPIHolder:Ljava/lang/Class;

    if-nez v0, :cond_25

    const-string v0, "com.sun.org.apache.xml.internal.security.utils.CachedXPathAPIHolder"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$utils$CachedXPathAPIHolder:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, local:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, localDoc:Ljava/lang/ThreadLocal;

    return-void

    :cond_25
    sget-object v0, class$com$sun$org$apache$xml$internal$security$utils$CachedXPathAPIHolder:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getCachedXPathAPI()Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;
    .registers 3

    sget-object v0, local:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;-><init>()V

    sget-object v1, local:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v1, localDoc:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1a
    return-object v0
.end method

.method public static setDoc(Lorg/w3c/dom/Document;)V
    .registers 3

    sget-object v0, localDoc:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_21

    sget-object v0, local:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;

    if-nez v0, :cond_22

    new-instance v0, Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;-><init>()V

    sget-object v1, local:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, localDoc:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->reset()V

    sget-object v0, localDoc:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_21
.end method
