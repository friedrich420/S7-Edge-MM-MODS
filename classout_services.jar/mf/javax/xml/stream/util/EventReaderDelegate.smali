.class public Lmf/javax/xml/stream/util/EventReaderDelegate;
.super Ljava/lang/Object;
.source "EventReaderDelegate.java"

# interfaces
.implements Lmf/javax/xml/stream/XMLEventReader;


# instance fields
.field private reader:Lmf/javax/xml/stream/XMLEventReader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/stream/XMLEventReader;)V
    .registers 2
    .param p1, "reader"    # Lmf/javax/xml/stream/XMLEventReader;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, reader:Lmf/javax/xml/stream/XMLEventReader;

    .line 80
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
    .line 122
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLEventReader;->close()V

    .line 123
    return-void
.end method

.method public getElementText()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLEventReader;->getElementText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lmf/javax/xml/stream/XMLEventReader;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLEventReader;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLEventReader;

    invoke-interface {v0, p1}, Lmf/javax/xml/stream/XMLEventReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLEventReader;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextEvent()Lmf/javax/xml/stream/events/XMLEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLEventReader;->nextEvent()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    return-object v0
.end method

.method public nextTag()Lmf/javax/xml/stream/events/XMLEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLEventReader;->nextTag()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    return-object v0
.end method

.method public peek()Lmf/javax/xml/stream/events/XMLEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLEventReader;->peek()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, reader:Lmf/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLEventReader;->remove()V

    .line 145
    return-void
.end method

.method public setParent(Lmf/javax/xml/stream/XMLEventReader;)V
    .registers 2
    .param p1, "reader"    # Lmf/javax/xml/stream/XMLEventReader;

    .prologue
    .line 87
    iput-object p1, p0, reader:Lmf/javax/xml/stream/XMLEventReader;

    .line 88
    return-void
.end method
