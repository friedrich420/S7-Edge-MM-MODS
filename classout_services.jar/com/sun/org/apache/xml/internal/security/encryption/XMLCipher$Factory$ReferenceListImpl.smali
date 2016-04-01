.class Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReferenceListImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl$DataReference;,
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl$KeyReference;,
        Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl$ReferenceImpl;
    }
.end annotation


# instance fields
.field private references:Ljava/util/List;

.field private sentry:Ljava/lang/Class;

.field private final this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_21

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$ReferenceListImpl$DataReference:Ljava/lang/Class;

    if-nez v0, :cond_1e

    const-string v0, "com.sun.org.apache.xml.internal.security.encryption.XMLCipher$Factory$ReferenceListImpl$DataReference"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$ReferenceListImpl$DataReference:Ljava/lang/Class;

    :goto_14
    iput-object v0, p0, sentry:Ljava/lang/Class;

    :goto_16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, references:Ljava/util/List;

    return-void

    :cond_1e
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$ReferenceListImpl$DataReference:Ljava/lang/Class;

    goto :goto_14

    :cond_21
    const/4 v0, 0x2

    if-ne p2, v0, :cond_36

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$ReferenceListImpl$KeyReference:Ljava/lang/Class;

    if-nez v0, :cond_33

    const-string v0, "com.sun.org.apache.xml.internal.security.encryption.XMLCipher$Factory$ReferenceListImpl$KeyReference"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$ReferenceListImpl$KeyReference:Ljava/lang/Class;

    :goto_30
    iput-object v0, p0, sentry:Ljava/lang/Class;

    goto :goto_16

    :cond_33
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->class$com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$ReferenceListImpl$KeyReference:Ljava/lang/Class;

    goto :goto_30

    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static access$500(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;
    .registers 2

    iget-object v0, p0, this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/sun/org/apache/xml/internal/security/encryption/Reference;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, sentry:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_12
    iget-object v0, p0, references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getReferences()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, references:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, references:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public newDataReference(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/Reference;
    .registers 3

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl$DataReference;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl$DataReference;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public newKeyReference(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/encryption/Reference;
    .registers 3

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl$KeyReference;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl$KeyReference;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public remove(Lcom/sun/org/apache/xml/internal/security/encryption/Reference;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, sentry:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_12
    iget-object v0, p0, references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, references:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method toElement()Lorg/w3c/dom/Element;
    .registers 4

    iget-object v0, p0, this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#"

    const-string v2, "ReferenceList"

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    iget-object v0, p0, references:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/encryption/Reference;

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl$ReferenceImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl$ReferenceImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_19

    :cond_2f
    return-object v1
.end method
