.class public Lmf/javax/xml/transform/stax/StAXResult;
.super Ljava/lang/Object;
.source "StAXResult.java"

# interfaces
.implements Lmf/javax/xml/transform/Result;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.stax.StAXResult/feature"


# instance fields
.field private systemId:Ljava/lang/String;

.field private xmlEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

.field private xmlStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;


# direct methods
.method public constructor <init>(Lmf/javax/xml/stream/XMLEventWriter;)V
    .registers 4
    .param p1, "xmlEventWriter"    # Lmf/javax/xml/stream/XMLEventWriter;

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object v0, p0, xmlEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    .line 89
    iput-object v0, p0, xmlStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    .line 92
    iput-object v0, p0, systemId:Ljava/lang/String;

    .line 109
    if-nez p1, :cond_14

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 111
    const-string v1, "StAXResult(XMLEventWriter) with XMLEventWriter == null"

    .line 110
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_14
    iput-object p1, p0, xmlEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    .line 115
    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/stream/XMLStreamWriter;)V
    .registers 4
    .param p1, "xmlStreamWriter"    # Lmf/javax/xml/stream/XMLStreamWriter;

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object v0, p0, xmlEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    .line 89
    iput-object v0, p0, xmlStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    .line 92
    iput-object v0, p0, systemId:Ljava/lang/String;

    .line 132
    if-nez p1, :cond_14

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 134
    const-string v1, "StAXResult(XMLStreamWriter) with XMLStreamWriter == null"

    .line 133
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_14
    iput-object p1, p0, xmlStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    .line 138
    return-void
.end method


# virtual methods
.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXMLEventWriter()Lmf/javax/xml/stream/XMLEventWriter;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, xmlEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    return-object v0
.end method

.method public getXMLStreamWriter()Lmf/javax/xml/stream/XMLStreamWriter;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, xmlStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    return-object v0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .registers 4
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 189
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 190
    const-string v1, "StAXResult#setSystemId(systemId) cannot set the system identifier for a StAXResult"

    .line 189
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
