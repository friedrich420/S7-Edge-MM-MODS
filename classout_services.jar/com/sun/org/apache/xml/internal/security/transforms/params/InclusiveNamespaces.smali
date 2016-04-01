.class public Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;
.super Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/transforms/TransformParam;


# static fields
.field public static final ExclusiveCanonicalizationNamespace:Ljava/lang/String; = "http://www.w3.org/2001/10/xml-exc-c14n#"

.field public static final _ATT_EC_PREFIXLIST:Ljava/lang/String; = "PrefixList"

.field public static final _TAG_EC_INCLUSIVENAMESPACES:Ljava/lang/String; = "InclusiveNamespaces"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, prefixStr2Set(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, <init>(Lorg/w3c/dom/Document;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/util/Set;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "xmlns"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const-string v0, "#default "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11

    :cond_2c
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11

    :cond_43
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const/4 v2, 0x0

    const-string v3, "PrefixList"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-void
.end method

.method public static prefixStr2Set(Ljava/lang/String;)Ljava/util/SortedSet;
    .registers 5

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    return-object v0

    :cond_e
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " \t\r\n"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const-string/jumbo v2, "xmlns"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2e
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15
.end method


# virtual methods
.method public getBaseLocalName()Ljava/lang/String;
    .registers 2

    const-string v0, "InclusiveNamespaces"

    return-object v0
.end method

.method public getBaseNamespace()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "http://www.w3.org/2001/10/xml-exc-c14n#"

    return-object v0
.end method

.method public getInclusiveNamespaces()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string v2, "PrefixList"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
