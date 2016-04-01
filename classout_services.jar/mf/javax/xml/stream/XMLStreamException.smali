.class public Lmf/javax/xml/stream/XMLStreamException;
.super Ljava/lang/Exception;
.source "XMLStreamException.java"


# instance fields
.field protected location:Lmf/javax/xml/stream/Location;

.field protected nested:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    iput-object p2, p0, nested:Ljava/lang/Throwable;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/javax/xml/stream/Location;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "location"    # Lmf/javax/xml/stream/Location;

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParseError at [row,col]:["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lmf/javax/xml/stream/Location;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    invoke-interface {p2}, Lmf/javax/xml/stream/Location;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    const-string v1, "Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 120
    iput-object p2, p0, location:Lmf/javax/xml/stream/Location;

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/javax/xml/stream/Location;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "location"    # Lmf/javax/xml/stream/Location;
    .param p3, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParseError at [row,col]:["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lmf/javax/xml/stream/Location;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-interface {p2}, Lmf/javax/xml/stream/Location;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    const-string v1, "Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 105
    iput-object p3, p0, nested:Ljava/lang/Throwable;

    .line 106
    iput-object p2, p0, location:Lmf/javax/xml/stream/Location;

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 80
    iput-object p1, p0, nested:Ljava/lang/Throwable;

    .line 81
    return-void
.end method


# virtual methods
.method public getLocation()Lmf/javax/xml/stream/Location;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, location:Lmf/javax/xml/stream/Location;

    return-object v0
.end method

.method public getNestedException()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, nested:Ljava/lang/Throwable;

    return-object v0
.end method
