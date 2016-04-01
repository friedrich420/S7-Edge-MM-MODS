.class public Lmf/javax/xml/stream/util/StreamReaderDelegate;
.super Ljava/lang/Object;
.source "StreamReaderDelegate.java"

# interfaces
.implements Lmf/javax/xml/stream/XMLStreamReader;


# instance fields
.field private reader:Lmf/javax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/stream/XMLStreamReader;)V
    .registers 2
    .param p1, "reader"    # Lmf/javax/xml/stream/XMLStreamReader;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    .line 79
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->close()V

    .line 131
    return-void
.end method

.method public getAttributeCount()I
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 181
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeName(I)Lmf/javax/xml/namespace/QName;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 169
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeName(I)Lmf/javax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 177
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 173
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 185
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 189
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "namespaceUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1, p2}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementText()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getElementText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()I
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lmf/javax/xml/stream/Location;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lmf/javax/xml/namespace/QName;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceCount()I
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v0

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 201
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 205
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPIData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPITarget()Ljava/lang/String;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lmf/javax/xml/stream/XMLStreamReader;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCharacters(I[CII)I
    .registers 6
    .param p1, "sourceStart"    # I
    .param p2, "target"    # [C
    .param p3, "targetStart"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/javax/xml/stream/XMLStreamReader;->getTextCharacters(I[CII)I

    move-result v0

    return v0
.end method

.method public getTextCharacters()[C
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v0

    return v0
.end method

.method public getTextStart()I
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasText()Z
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->hasText()Z

    move-result v0

    return v0
.end method

.method public isAttributeSpecified(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 193
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result v0

    return v0
.end method

.method public isCharacters()Z
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->isCharacters()Z

    move-result v0

    return v0
.end method

.method public isEndElement()Z
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->isEndElement()Z

    move-result v0

    return v0
.end method

.method public isStandalone()Z
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->isStandalone()Z

    move-result v0

    return v0
.end method

.method public isStartElement()Z
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result v0

    return v0
.end method

.method public isWhiteSpace()Z
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->isWhiteSpace()Z

    move-result v0

    return v0
.end method

.method public next()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->next()I

    move-result v0

    return v0
.end method

.method public nextTag()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->nextTag()I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1, p2, p3}, Lmf/javax/xml/stream/XMLStreamReader;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public setParent(Lmf/javax/xml/stream/XMLStreamReader;)V
    .registers 2
    .param p1, "reader"    # Lmf/javax/xml/stream/XMLStreamReader;

    .prologue
    .line 86
    iput-object p1, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    .line 87
    return-void
.end method

.method public standaloneSet()Z
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->standaloneSet()Z

    move-result v0

    return v0
.end method
