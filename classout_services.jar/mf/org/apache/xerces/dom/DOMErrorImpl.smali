.class public Lmf/org/apache/xerces/dom/DOMErrorImpl;
.super Ljava/lang/Object;
.source "DOMErrorImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/DOMError;


# instance fields
.field public fException:Ljava/lang/Exception;

.field public fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

.field public fMessage:Ljava/lang/String;

.field public fRelatedData:Ljava/lang/Object;

.field public fSeverity:S

.field public fType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-short v0, p0, fSeverity:S

    .line 54
    iput-object v1, p0, fMessage:Ljava/lang/String;

    .line 55
    new-instance v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    .line 56
    iput-object v1, p0, fException:Ljava/lang/Exception;

    .line 68
    return-void
.end method

.method public constructor <init>(SLmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .registers 5
    .param p1, "severity"    # S
    .param p2, "exception"    # Lmf/org/apache/xerces/xni/parser/XMLParseException;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-short v0, p0, fSeverity:S

    .line 54
    iput-object v1, p0, fMessage:Ljava/lang/String;

    .line 55
    new-instance v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    .line 56
    iput-object v1, p0, fException:Ljava/lang/Exception;

    .line 72
    iput-short p1, p0, fSeverity:S

    .line 73
    iput-object p2, p0, fException:Ljava/lang/Exception;

    .line 74
    invoke-direct {p0, p2}, createDOMLocator(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    move-result-object v0

    iput-object v0, p0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    .line 75
    return-void
.end method

.method private createDOMLocator(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lmf/org/apache/xerces/dom/DOMLocatorImpl;
    .registers 7
    .param p1, "exception"    # Lmf/org/apache/xerces/xni/parser/XMLParseException;

    .prologue
    .line 105
    new-instance v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v1

    .line 106
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v2

    .line 107
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getCharacterOffset()I

    move-result v3

    .line 108
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMLocatorImpl;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getLocation()Lmf/org/w3c/dom/DOMLocator;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, fMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, fRelatedData:Ljava/lang/Object;

    return-object v0
.end method

.method public getRelatedException()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, fException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getSeverity()S
    .registers 2

    .prologue
    .line 83
    iget-short v0, p0, fSeverity:S

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, fType:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-short v0, p0, fSeverity:S

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, fException:Ljava/lang/Exception;

    .line 124
    return-void
.end method
