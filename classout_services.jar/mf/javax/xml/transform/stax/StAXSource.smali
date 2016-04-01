.class public Lmf/javax/xml/transform/stax/StAXSource;
.super Ljava/lang/Object;
.source "StAXSource.java"

# interfaces
.implements Lmf/javax/xml/transform/Source;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.stax.StAXSource/feature"


# instance fields
.field private systemId:Ljava/lang/String;

.field private xmlEventReader:Lmf/javax/xml/stream/XMLEventReader;

.field private xmlStreamReader:Lmf/javax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>(Lmf/javax/xml/stream/XMLEventReader;)V
    .registers 6
    .param p1, "xmlEventReader"    # Lmf/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v2, p0, xmlEventReader:Lmf/javax/xml/stream/XMLEventReader;

    .line 90
    iput-object v2, p0, xmlStreamReader:Lmf/javax/xml/stream/XMLStreamReader;

    .line 93
    iput-object v2, p0, systemId:Ljava/lang/String;

    .line 120
    if-nez p1, :cond_14

    .line 121
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 122
    const-string v3, "StAXSource(XMLEventReader) with XMLEventReader == null"

    .line 121
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    :cond_14
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLEventReader;->peek()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 132
    .local v0, "event":Lmf/javax/xml/stream/events/XMLEvent;
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v1

    .line 133
    .local v1, "eventType":I
    const/4 v2, 0x7

    if-eq v1, v2, :cond_2a

    .line 134
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2a

    .line 135
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 136
    const-string v3, "StAXSource(XMLEventReader) with XMLEventReader not in XMLStreamConstants.START_DOCUMENT or XMLStreamConstants.START_ELEMENT state"

    .line 135
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_2a
    iput-object p1, p0, xmlEventReader:Lmf/javax/xml/stream/XMLEventReader;

    .line 142
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v2

    invoke-interface {v2}, Lmf/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, systemId:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/stream/XMLStreamReader;)V
    .registers 5
    .param p1, "xmlStreamReader"    # Lmf/javax/xml/stream/XMLStreamReader;

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v1, p0, xmlEventReader:Lmf/javax/xml/stream/XMLEventReader;

    .line 90
    iput-object v1, p0, xmlStreamReader:Lmf/javax/xml/stream/XMLStreamReader;

    .line 93
    iput-object v1, p0, systemId:Ljava/lang/String;

    .line 167
    if-nez p1, :cond_14

    .line 168
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 169
    const-string v2, "StAXSource(XMLStreamReader) with XMLStreamReader == null"

    .line 168
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_14
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    .line 173
    .local v0, "eventType":I
    const/4 v1, 0x7

    if-eq v0, v1, :cond_26

    .line 174
    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    .line 175
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 176
    const-string v2, "StAXSource(XMLStreamReader) with XMLStreamReadernot in XMLStreamConstants.START_DOCUMENT or XMLStreamConstants.START_ELEMENT state"

    .line 175
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_26
    iput-object p1, p0, xmlStreamReader:Lmf/javax/xml/stream/XMLStreamReader;

    .line 182
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v1

    invoke-interface {v1}, Lmf/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, systemId:Ljava/lang/String;

    .line 183
    return-void
.end method


# virtual methods
.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getXMLEventReader()Lmf/javax/xml/stream/XMLEventReader;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, xmlEventReader:Lmf/javax/xml/stream/XMLEventReader;

    return-object v0
.end method

.method public getXMLStreamReader()Lmf/javax/xml/stream/XMLStreamReader;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, xmlStreamReader:Lmf/javax/xml/stream/XMLStreamReader;

    return-object v0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .registers 4
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 235
    const-string v1, "StAXSource#setSystemId(systemId) cannot set the system identifier for a StAXSource"

    .line 234
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
