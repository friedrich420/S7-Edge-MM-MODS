.class Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SdpServiceKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyXmlHandler"
.end annotation


# instance fields
.field attrAlias:Ljava/lang/String;

.field attrPkgName:Ljava/lang/String;

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

.field mInfo:Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

.field private owner:Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

.field private privilegedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    .registers 5
    .param p2, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    const/4 v1, 0x0

    .line 688
    iput-object p1, p0, this$1:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    .line 689
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 685
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, elementStack:Ljava/util/Stack;

    .line 686
    iput-object v1, p0, mInfo:Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .line 693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, privilegedApps:Ljava/util/List;

    .line 694
    iput-object v1, p0, owner:Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    .line 690
    iput-object p2, p0, mInfo:Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .line 691
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;)Lcom/android/server/sdp/engine/SdpPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;

    .prologue
    .line 684
    invoke-direct {p0}, getSdpPolicy()Lcom/android/server/sdp/engine/SdpPolicy;

    move-result-object v0

    return-object v0
.end method

.method private getSdpPolicy()Lcom/android/server/sdp/engine/SdpPolicy;
    .registers 5

    .prologue
    .line 697
    new-instance v0, Lcom/android/server/sdp/engine/SdpPolicy;

    iget-object v1, p0, mInfo:Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    iget-object v2, p0, owner:Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    iget-object v3, p0, privilegedApps:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/sdp/engine/SdpPolicy;-><init>(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;Ljava/util/List;)V

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
    .line 747
    const-string v0, "SdpServiceKeeper"

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

    .line 749
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
    .line 708
    const-string v0, "SdpServiceKeeper"

    const-string/jumbo v1, "end document     : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 731
    iget-object v0, p0, elementStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 732
    const-string v0, "SdpServiceKeeper"

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

    .line 733
    const-string/jumbo v0, "privileged_app"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 734
    iget-object v0, p0, mInfo:Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, attrAlias:Ljava/lang/String;

    iget-object v1, p0, mInfo:Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 735
    iget-object v0, p0, privilegedApps:Ljava/util/List;

    new-instance v1, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    iget-object v2, p0, attrAlias:Ljava/lang/String;

    iget-object v3, p0, attrPkgName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    :cond_4c
    :goto_4c
    iput-object v4, p0, attrAlias:Ljava/lang/String;

    .line 742
    iput-object v4, p0, attrPkgName:Ljava/lang/String;

    .line 743
    return-void

    .line 736
    :cond_51
    const-string/jumbo v0, "owner"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 737
    iget-object v0, p0, mInfo:Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, attrAlias:Ljava/lang/String;

    iget-object v1, p0, mInfo:Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 738
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    iget-object v1, p0, attrAlias:Ljava/lang/String;

    iget-object v2, p0, attrPkgName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, owner:Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    goto :goto_4c
.end method

.method public startDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 704
    const-string v0, "SdpServiceKeeper"

    const-string/jumbo v1, "start document   : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
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
    .line 714
    iget-object v0, p0, elementStack:Ljava/util/Stack;

    invoke-virtual {v0, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    const-string v0, "SdpServiceKeeper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start element    : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const-string/jumbo v0, "privileged_app"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string/jumbo v0, "owner"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 720
    :cond_30
    const-string v0, "SdpServiceKeeper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " attribte alias: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "alias"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string v0, "SdpServiceKeeper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " attribte pkg_name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "pkg_name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const-string v0, "alias"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, attrAlias:Ljava/lang/String;

    .line 725
    const-string/jumbo v0, "pkg_name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, attrPkgName:Ljava/lang/String;

    .line 727
    :cond_7e
    return-void
.end method
