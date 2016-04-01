.class Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineXmlHandler"
.end annotation


# instance fields
.field private attrAlias:Ljava/lang/String;

.field private attrFlags:I

.field private attrId:I

.field private attrIsMigrating:Z

.field private attrPkgName:Ljava/lang/String;

.field private attrUserId:I

.field private attrVersion:I

.field private elementStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private info:Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

.field final synthetic this$2:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;)V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 1935
    iput-object p1, p0, this$2:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    .line 1936
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 1940
    const/4 v0, 0x0

    iput-object v0, p0, info:Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .line 1946
    const-string v0, ""

    iput-object v0, p0, attrAlias:Ljava/lang/String;

    .line 1947
    iput v1, p0, attrId:I

    .line 1948
    iput v1, p0, attrUserId:I

    .line 1949
    iput v1, p0, attrFlags:I

    .line 1950
    iput v1, p0, attrVersion:I

    .line 1951
    const/4 v0, 0x0

    iput-boolean v0, p0, attrIsMigrating:Z

    .line 1952
    const-string v0, ""

    iput-object v0, p0, attrPkgName:Ljava/lang/String;

    .line 1937
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, elementStack:Ljava/util/Stack;

    .line 1938
    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;

    .prologue
    .line 1932
    invoke-direct {p0}, getEngineInfoLocked()Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEngineInfoLocked()Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .registers 2

    .prologue
    .line 1943
    iget-object v0, p0, info:Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .registers 7
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2013
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start characters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    return-void
.end method

.method public endDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1959
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "end document     : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2002
    iget-object v0, p0, elementStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2003
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "end element      : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    const-string/jumbo v0, "user"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2005
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    iget-object v1, p0, attrAlias:Ljava/lang/String;

    iget v2, p0, attrId:I

    iget v3, p0, attrUserId:I

    const/4 v4, 0x1

    iget v5, p0, attrFlags:I

    iget v6, p0, attrVersion:I

    iget-boolean v7, p0, attrIsMigrating:Z

    invoke-direct/range {v0 .. v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    iput-object v0, p0, info:Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .line 2007
    iget-object v0, p0, info:Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    iget-object v1, p0, attrPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setPackageName(Ljava/lang/String;)V

    .line 2009
    :cond_42
    return-void
.end method

.method public startDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1955
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "start document   : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1966
    iget-object v1, p0, elementStack:Ljava/util/Stack;

    invoke-virtual {v1, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start element    : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    const-string/jumbo v1, "user"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 1970
    const-string v1, "alias"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, attrAlias:Ljava/lang/String;

    .line 1971
    const-string/jumbo v1, "pkgName"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, attrPkgName:Ljava/lang/String;

    .line 1973
    const-string/jumbo v1, "id"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1974
    .local v0, "tempStr":Ljava/lang/String;
    if-eqz v0, :cond_47

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, attrId:I

    .line 1976
    :cond_47
    const-string/jumbo v1, "userid"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1977
    if-eqz v0, :cond_8a

    .line 1978
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, attrUserId:I

    .line 1984
    :cond_56
    :goto_56
    const-string/jumbo v1, "flags"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1985
    if-eqz v0, :cond_65

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, attrFlags:I

    .line 1987
    :cond_65
    const-string/jumbo v1, "version"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1988
    if-eqz v0, :cond_74

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, attrVersion:I

    .line 1990
    :cond_74
    const-string/jumbo v1, "isMigrating"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1991
    if-eqz v0, :cond_89

    .line 1992
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 1993
    const/4 v1, 0x1

    iput-boolean v1, p0, attrIsMigrating:Z

    .line 1998
    .end local v0    # "tempStr":Ljava/lang/String;
    :cond_89
    :goto_89
    return-void

    .line 1980
    .restart local v0    # "tempStr":Ljava/lang/String;
    :cond_8a
    iget v1, p0, attrId:I

    invoke-static {v1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isAndroidDefaultUser(I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1981
    iget v1, p0, attrId:I

    iput v1, p0, attrUserId:I

    goto :goto_56

    .line 1995
    :cond_97
    const/4 v1, 0x0

    iput-boolean v1, p0, attrIsMigrating:Z

    goto :goto_89
.end method
