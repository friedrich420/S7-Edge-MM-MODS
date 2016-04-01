.class public Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/NodeList;


# static fields
.field static class$com$sun$org$apache$xml$internal$security$utils$HelperNodeList:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field _allNodesMustHaveSameParent:Z

.field nodes:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$utils$HelperNodeList:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "com.sun.org.apache.xml.internal.security.utils.HelperNodeList"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$utils$HelperNodeList:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    return-void

    :cond_17
    sget-object v0, class$com$sun$org$apache$xml$internal$security$utils$HelperNodeList:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, <init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, nodes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, _allNodesMustHaveSameParent:Z

    iput-boolean p1, p0, _allNodesMustHaveSameParent:Z

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


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-boolean v0, p0, _allNodesMustHaveSameParent:Z

    if-eqz v0, :cond_21

    invoke-virtual {p0}, getLength()I

    move-result v0

    if-lez v0, :cond_21

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eq v0, v1, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Nodes have not the same Parent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iget-object v0, p0, nodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getLength()I
    .registers 2

    iget-object v0, p0, nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .registers 2

    invoke-virtual {p0}, getLength()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getOwnerDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_7
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .registers 3

    iget-object v0, p0, nodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0
.end method
