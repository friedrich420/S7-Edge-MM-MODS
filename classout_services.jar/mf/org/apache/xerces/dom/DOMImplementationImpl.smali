.class public Lmf/org/apache/xerces/dom/DOMImplementationImpl;
.super Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;
.source "DOMImplementationImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/DOMImplementation;


# static fields
.field static final singleton:Lmf/org/apache/xerces/dom/DOMImplementationImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    new-instance v0, Lmf/org/apache/xerces/dom/DOMImplementationImpl;

    invoke-direct {v0}, <init>()V

    sput-object v0, singleton:Lmf/org/apache/xerces/dom/DOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .registers 1

    .prologue
    .line 56
    sget-object v0, singleton:Lmf/org/apache/xerces/dom/DOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method protected createDocument(Lmf/org/w3c/dom/DocumentType;)Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .registers 3
    .param p1, "doctype"    # Lmf/org/w3c/dom/DocumentType;

    .prologue
    .line 106
    new-instance v0, Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/dom/DocumentImpl;-><init>(Lmf/org/w3c/dom/DocumentType;)V

    return-object v0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 80
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 81
    .local v1, "result":Z
    if-nez v1, :cond_7c

    .line 82
    if-eqz p2, :cond_78

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_78

    move v0, v2

    .line 83
    .local v0, "anyVersion":Z
    :goto_11
    const-string v4, "+"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 84
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 87
    :cond_1d
    const-string v4, "Events"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 88
    if-nez v0, :cond_7a

    const-string v4, "2.0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 89
    :cond_2f
    const-string v4, "MutationEvents"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 90
    if-nez v0, :cond_7a

    const-string v4, "2.0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 91
    :cond_41
    const-string v4, "Traversal"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 92
    if-nez v0, :cond_7a

    const-string v4, "2.0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 93
    :cond_53
    const-string v4, "Range"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 94
    if-nez v0, :cond_7a

    const-string v4, "2.0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 95
    :cond_65
    const-string v4, "MutationEvents"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 96
    if-nez v0, :cond_7a

    const-string v4, "2.0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 98
    .end local v0    # "anyVersion":Z
    :cond_77
    :goto_77
    return v2

    :cond_78
    move v0, v3

    .line 82
    goto :goto_11

    .restart local v0    # "anyVersion":Z
    :cond_7a
    move v2, v3

    .line 86
    goto :goto_77

    .end local v0    # "anyVersion":Z
    :cond_7c
    move v2, v1

    .line 98
    goto :goto_77
.end method
