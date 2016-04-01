.class public Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;
.super Lcom/sun/org/apache/xpath/internal/XPathContext;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;-><init>(Ljava/lang/Object;)V

    :try_start_3
    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;
    :try_end_5
    .catch Ljava/lang/IllegalAccessError; {:try_start_3 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/IllegalAccessError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "endorsed.jdk1.4.0"

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " Original message was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;-><init>(Ljava/lang/Object;)V

    :try_start_3
    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;
    :try_end_d
    .catch Ljava/lang/IllegalAccessError; {:try_start_3 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/IllegalAccessError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "endorsed.jdk1.4.0"

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " Original message was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xpath/internal/XPathContext;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;-><init>(Ljava/lang/Object;)V

    :try_start_3
    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;
    :try_end_9
    .catch Ljava/lang/IllegalAccessError; {:try_start_3 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/IllegalAccessError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "endorsed.jdk1.4.0"

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " Original message was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
