.class public Lmf/org/apache/html/dom/HTMLDOMImplementationImpl;
.super Lmf/org/apache/xerces/dom/DOMImplementationImpl;
.source "HTMLDOMImplementationImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLDOMImplementation;


# static fields
.field private static final _instance:Lmf/org/w3c/dom/html/HTMLDOMImplementation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Lmf/org/apache/html/dom/HTMLDOMImplementationImpl;

    invoke-direct {v0}, <init>()V

    sput-object v0, _instance:Lmf/org/w3c/dom/html/HTMLDOMImplementation;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/DOMImplementationImpl;-><init>()V

    .line 59
    return-void
.end method

.method public static getHTMLDOMImplementation()Lmf/org/w3c/dom/html/HTMLDOMImplementation;
    .registers 1

    .prologue
    .line 90
    sget-object v0, _instance:Lmf/org/w3c/dom/html/HTMLDOMImplementation;

    return-object v0
.end method


# virtual methods
.method public final createHTMLDocument(Ljava/lang/String;)Lmf/org/w3c/dom/html/HTMLDocument;
    .registers 5
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 73
    if-nez p1, :cond_a

    .line 74
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "HTM014 Argument \'title\' is null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_a
    new-instance v0, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    invoke-direct {v0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;-><init>()V

    .line 76
    .local v0, "doc":Lmf/org/w3c/dom/html/HTMLDocument;
    invoke-interface {v0, p1}, Lmf/org/w3c/dom/html/HTMLDocument;->setTitle(Ljava/lang/String;)V

    .line 77
    return-object v0
.end method
