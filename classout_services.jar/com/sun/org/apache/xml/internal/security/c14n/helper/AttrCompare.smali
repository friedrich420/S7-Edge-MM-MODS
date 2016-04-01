.class public Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final XMLNS:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"


# instance fields
.field private final ATTR0_BEFORE_ATTR1:I

.field private final ATTR1_BEFORE_ATTR0:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, ATTR0_BEFORE_ATTR1:I

    const/4 v0, 0x1

    iput v0, p0, ATTR1_BEFORE_ATTR0:I

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 9

    const/4 v1, 0x1

    const/4 v0, -0x1

    check-cast p1, Lorg/w3c/dom/Attr;

    check-cast p2, Lorg/w3c/dom/Attr;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v4, :cond_43

    if-eqz v5, :cond_42

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "xmlns"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v0, ""

    :cond_33
    const-string/jumbo v2, "xmlns"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string v1, ""

    :cond_3e
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_42
    :goto_42
    return v0

    :cond_43
    if-eqz v5, :cond_47

    move v0, v1

    goto :goto_42

    :cond_47
    if-nez v2, :cond_58

    if-nez v3, :cond_42

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_42

    :cond_58
    if-nez v3, :cond_5c

    move v0, v1

    goto :goto_42

    :cond_5c
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_42

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_42
.end method
