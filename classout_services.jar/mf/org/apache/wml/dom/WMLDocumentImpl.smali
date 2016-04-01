.class public Lmf/org/apache/wml/dom/WMLDocumentImpl;
.super Lmf/org/apache/xerces/dom/DocumentImpl;
.source "WMLDocumentImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLDocument;


# static fields
.field private static final _elemClassSigWML:[Ljava/lang/Class;

.field private static _elementTypesWML:Ljava/util/Hashtable; = null

.field private static final serialVersionUID:J = -0x5b5b2d153961c668L


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lmf/org/apache/wml/dom/WMLDocumentImpl;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 40
    sput-object v0, _elemClassSigWML:[Ljava/lang/Class;

    .line 79
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, _elementTypesWML:Ljava/util/Hashtable;

    .line 80
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string v1, "b"

    const-class v2, Lmf/org/apache/wml/dom/WMLBElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "noop"

    const-class v2, Lmf/org/apache/wml/dom/WMLNoopElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string v1, "a"

    const-class v2, Lmf/org/apache/wml/dom/WMLAElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "setvar"

    const-class v2, Lmf/org/apache/wml/dom/WMLSetvarElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string v1, "access"

    const-class v2, Lmf/org/apache/wml/dom/WMLAccessElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "strong"

    const-class v2, Lmf/org/apache/wml/dom/WMLStrongElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "postfield"

    const-class v2, Lmf/org/apache/wml/dom/WMLPostfieldElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "do"

    const-class v2, Lmf/org/apache/wml/dom/WMLDoElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "wml"

    const-class v2, Lmf/org/apache/wml/dom/WMLWmlElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "tr"

    const-class v2, Lmf/org/apache/wml/dom/WMLTrElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "go"

    const-class v2, Lmf/org/apache/wml/dom/WMLGoElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string v1, "big"

    const-class v2, Lmf/org/apache/wml/dom/WMLBigElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string v1, "anchor"

    const-class v2, Lmf/org/apache/wml/dom/WMLAnchorElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "timer"

    const-class v2, Lmf/org/apache/wml/dom/WMLTimerElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "small"

    const-class v2, Lmf/org/apache/wml/dom/WMLSmallElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "optgroup"

    const-class v2, Lmf/org/apache/wml/dom/WMLOptgroupElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "head"

    const-class v2, Lmf/org/apache/wml/dom/WMLHeadElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "td"

    const-class v2, Lmf/org/apache/wml/dom/WMLTdElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "fieldset"

    const-class v2, Lmf/org/apache/wml/dom/WMLFieldsetElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "img"

    const-class v2, Lmf/org/apache/wml/dom/WMLImgElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "refresh"

    const-class v2, Lmf/org/apache/wml/dom/WMLRefreshElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "onevent"

    const-class v2, Lmf/org/apache/wml/dom/WMLOneventElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "input"

    const-class v2, Lmf/org/apache/wml/dom/WMLInputElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "prev"

    const-class v2, Lmf/org/apache/wml/dom/WMLPrevElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "table"

    const-class v2, Lmf/org/apache/wml/dom/WMLTableElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "meta"

    const-class v2, Lmf/org/apache/wml/dom/WMLMetaElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "template"

    const-class v2, Lmf/org/apache/wml/dom/WMLTemplateElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string v1, "br"

    const-class v2, Lmf/org/apache/wml/dom/WMLBrElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "option"

    const-class v2, Lmf/org/apache/wml/dom/WMLOptionElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "u"

    const-class v2, Lmf/org/apache/wml/dom/WMLUElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "p"

    const-class v2, Lmf/org/apache/wml/dom/WMLPElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "select"

    const-class v2, Lmf/org/apache/wml/dom/WMLSelectElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "em"

    const-class v2, Lmf/org/apache/wml/dom/WMLEmElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "i"

    const-class v2, Lmf/org/apache/wml/dom/WMLIElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    const-string v1, "card"

    const-class v2, Lmf/org/apache/wml/dom/WMLCardElementImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/DocumentType;)V
    .registers 3
    .param p1, "doctype"    # Lmf/org/w3c/dom/DocumentType;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/DocumentImpl;-><init>(Lmf/org/w3c/dom/DocumentType;Z)V

    .line 120
    return-void
.end method


# virtual methods
.method protected canRenameElements(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Z
    .registers 7
    .param p1, "newNamespaceURI"    # Ljava/lang/String;
    .param p2, "newNodeName"    # Ljava/lang/String;
    .param p3, "el"    # Lmf/org/apache/xerces/dom/ElementImpl;

    .prologue
    .line 75
    sget-object v0, _elementTypesWML:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, _elementTypesWML:Ljava/util/Hashtable;

    invoke-virtual {p3}, Lmf/org/apache/xerces/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .registers 9
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 48
    sget-object v4, _elementTypesWML:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 49
    .local v1, "elemClass":Ljava/lang/Class;
    if-eqz v1, :cond_6d

    .line 51
    :try_start_a
    sget-object v4, _elemClassSigWML:[Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 52
    .local v0, "cnst":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/w3c/dom/Element;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_20

    .line 67
    .end local v0    # "cnst":Ljava/lang/reflect/Constructor;
    :goto_1f
    return-object v4

    .line 53
    :catch_20
    move-exception v2

    .line 56
    .local v2, "except":Ljava/lang/Exception;
    instance-of v4, v2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v4, :cond_6b

    .line 57
    check-cast v2, Ljava/lang/reflect/InvocationTargetException;

    .end local v2    # "except":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    .line 61
    .local v3, "thrw":Ljava/lang/Throwable;
    :goto_2b
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Tag \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' associated with an Element class that failed to construct."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 59
    .end local v3    # "thrw":Ljava/lang/Throwable;
    .restart local v2    # "except":Ljava/lang/Exception;
    :cond_6b
    move-object v3, v2

    .restart local v3    # "thrw":Ljava/lang/Throwable;
    goto :goto_2b

    .line 67
    .end local v2    # "except":Ljava/lang/Exception;
    .end local v3    # "thrw":Ljava/lang/Throwable;
    :cond_6d
    new-instance v4, Lmf/org/apache/wml/dom/WMLElementImpl;

    invoke-direct {v4, p0, p1}, Lmf/org/apache/wml/dom/WMLElementImpl;-><init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V

    goto :goto_1f
.end method
