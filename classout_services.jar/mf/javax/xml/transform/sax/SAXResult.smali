.class public Lmf/javax/xml/transform/sax/SAXResult;
.super Ljava/lang/Object;
.source "SAXResult.java"

# interfaces
.implements Lmf/javax/xml/transform/Result;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.sax.SAXResult/feature"


# instance fields
.field private handler:Lorg/xml/sax/ContentHandler;

.field private lexhandler:Lorg/xml/sax/ext/LexicalHandler;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .registers 2
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0, p1}, setHandler(Lorg/xml/sax/ContentHandler;)V

    .line 80
    return-void
.end method


# virtual methods
.method public getHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, handler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, lexhandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, systemId:Ljava/lang/String;

    return-object v0
.end method

.method public setHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 2
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 88
    iput-object p1, p0, handler:Lorg/xml/sax/ContentHandler;

    .line 89
    return-void
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .registers 2
    .param p1, "handler"    # Lorg/xml/sax/ext/LexicalHandler;

    .prologue
    .line 112
    iput-object p1, p0, lexhandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 113
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .registers 2
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, systemId:Ljava/lang/String;

    .line 132
    return-void
.end method
