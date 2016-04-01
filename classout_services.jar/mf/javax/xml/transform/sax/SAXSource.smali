.class public Lmf/javax/xml/transform/sax/SAXSource;
.super Ljava/lang/Object;
.source "SAXSource.java"

# interfaces
.implements Lmf/javax/xml/transform/Source;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.sax.SAXSource/feature"


# instance fields
.field private inputSource:Lorg/xml/sax/InputSource;

.field private reader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/InputSource;)V
    .registers 2
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, inputSource:Lorg/xml/sax/InputSource;

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V
    .registers 3
    .param p1, "reader"    # Lorg/xml/sax/XMLReader;
    .param p2, "inputSource"    # Lorg/xml/sax/InputSource;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, reader:Lorg/xml/sax/XMLReader;

    .line 100
    iput-object p2, p0, inputSource:Lorg/xml/sax/InputSource;

    .line 101
    return-void
.end method

.method public static sourceToInputSource(Lmf/javax/xml/transform/Source;)Lorg/xml/sax/InputSource;
    .registers 4
    .param p0, "source"    # Lmf/javax/xml/transform/Source;

    .prologue
    .line 214
    instance-of v2, p0, Lmf/javax/xml/transform/sax/SAXSource;

    if-eqz v2, :cond_b

    .line 215
    check-cast p0, Lmf/javax/xml/transform/sax/SAXSource;

    .end local p0    # "source":Lmf/javax/xml/transform/Source;
    invoke-virtual {p0}, getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v0

    .line 226
    .restart local p0    # "source":Lmf/javax/xml/transform/Source;
    :goto_a
    return-object v0

    .line 216
    :cond_b
    instance-of v2, p0, Lmf/javax/xml/transform/stream/StreamSource;

    if-eqz v2, :cond_31

    move-object v1, p0

    .line 217
    check-cast v1, Lmf/javax/xml/transform/stream/StreamSource;

    .line 218
    .local v1, "ss":Lmf/javax/xml/transform/stream/StreamSource;
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {v1}, Lmf/javax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "isource":Lorg/xml/sax/InputSource;
    invoke-virtual {v1}, Lmf/javax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 221
    invoke-virtual {v1}, Lmf/javax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 222
    invoke-virtual {v1}, Lmf/javax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    goto :goto_a

    .line 226
    .end local v0    # "isource":Lorg/xml/sax/InputSource;
    .end local v1    # "ss":Lmf/javax/xml/transform/stream/StreamSource;
    :cond_31
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public getInputSource()Lorg/xml/sax/InputSource;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, inputSource:Lorg/xml/sax/InputSource;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, inputSource:Lorg/xml/sax/InputSource;

    if-nez v0, :cond_6

    .line 187
    const/4 v0, 0x0

    .line 189
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, inputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, reader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .registers 2
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;

    .prologue
    .line 143
    iput-object p1, p0, inputSource:Lorg/xml/sax/InputSource;

    .line 144
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .registers 3
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, inputSource:Lorg/xml/sax/InputSource;

    if-nez v0, :cond_c

    .line 172
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, inputSource:Lorg/xml/sax/InputSource;

    .line 176
    :goto_b
    return-void

    .line 174
    :cond_c
    iget-object v0, p0, inputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .registers 2
    .param p1, "reader"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 125
    iput-object p1, p0, reader:Lorg/xml/sax/XMLReader;

    .line 126
    return-void
.end method
