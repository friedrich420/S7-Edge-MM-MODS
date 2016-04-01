.class Lcom/sec/epdg/IWlanApnSetting$IKeSetting;
.super Ljava/lang/Object;
.source "IWlanApnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanApnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IKeSetting"
.end annotation


# instance fields
.field private mIkeConnectionTimeOut:I

.field private mIkeDhGroup:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

.field private mIkeDpdTimeOut:I

.field private mIkeEapType:Lcom/sec/epdg/IWlanEnum$IkeEapType;

.field private mIkeEncryptType:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

.field private mIkeIntergrity:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

.field private mIkeLife:I

.field private mIkeNatValue:I

.field private mIkeWindowSize:I

.field private mIkeversion:Lcom/sec/epdg/IWlanEnum$Ikeversion;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IWlanApnSetting$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sec/epdg/IWlanApnSetting$1;

    .prologue
    .line 275
    invoke-direct {p0}, <init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/epdg/IWlanApnSetting$IKeSetting;Lcom/sec/epdg/IWlanEnum$Ikeversion;Lcom/sec/epdg/IWlanEnum$IkeEncryption;Lcom/sec/epdg/IWlanEnum$IkeIntegrity;Lcom/sec/epdg/IWlanEnum$IkeDhGroup;IIIILcom/sec/epdg/IWlanEnum$IkeEapType;I)V
    .registers 11
    .param p0, "x0"    # Lcom/sec/epdg/IWlanApnSetting$IKeSetting;
    .param p1, "x1"    # Lcom/sec/epdg/IWlanEnum$Ikeversion;
    .param p2, "x2"    # Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    .param p3, "x3"    # Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    .param p4, "x4"    # Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Lcom/sec/epdg/IWlanEnum$IkeEapType;
    .param p10, "x10"    # I

    .prologue
    .line 275
    invoke-direct/range {p0 .. p10}, updateIkeValues(Lcom/sec/epdg/IWlanEnum$Ikeversion;Lcom/sec/epdg/IWlanEnum$IkeEncryption;Lcom/sec/epdg/IWlanEnum$IkeIntegrity;Lcom/sec/epdg/IWlanEnum$IkeDhGroup;IIIILcom/sec/epdg/IWlanEnum$IkeEapType;I)V

    return-void
.end method

.method private updateIkeValues(Lcom/sec/epdg/IWlanEnum$Ikeversion;Lcom/sec/epdg/IWlanEnum$IkeEncryption;Lcom/sec/epdg/IWlanEnum$IkeIntegrity;Lcom/sec/epdg/IWlanEnum$IkeDhGroup;IIIILcom/sec/epdg/IWlanEnum$IkeEapType;I)V
    .registers 11
    .param p1, "ikeversion"    # Lcom/sec/epdg/IWlanEnum$Ikeversion;
    .param p2, "ikeencryption"    # Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    .param p3, "ikeintegrity"    # Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    .param p4, "ikedhgroup"    # Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    .param p5, "ikelife"    # I
    .param p6, "ikewindow"    # I
    .param p7, "ikeconntimeout"    # I
    .param p8, "ikedpdtimeout"    # I
    .param p9, "eaptype"    # Lcom/sec/epdg/IWlanEnum$IkeEapType;
    .param p10, "ikenatval"    # I

    .prologue
    .line 302
    iput-object p1, p0, mIkeversion:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    .line 303
    iput-object p3, p0, mIkeIntergrity:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    .line 304
    iput-object p2, p0, mIkeEncryptType:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    .line 305
    iput-object p4, p0, mIkeDhGroup:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    .line 306
    iput-object p9, p0, mIkeEapType:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    .line 307
    iput p5, p0, mIkeLife:I

    .line 308
    iput p6, p0, mIkeWindowSize:I

    .line 309
    iput p8, p0, mIkeDpdTimeOut:I

    .line 310
    iput p7, p0, mIkeConnectionTimeOut:I

    .line 311
    iput p10, p0, mIkeNatValue:I

    .line 312
    return-void
.end method


# virtual methods
.method public getmIkeConnectionTimeOut()I
    .registers 2

    .prologue
    .line 343
    iget v0, p0, mIkeConnectionTimeOut:I

    return v0
.end method

.method public getmIkeDhGroup()Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, mIkeDhGroup:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    return-object v0
.end method

.method public getmIkeDpdTimeOut()I
    .registers 2

    .prologue
    .line 339
    iget v0, p0, mIkeDpdTimeOut:I

    return v0
.end method

.method public getmIkeEapType()Lcom/sec/epdg/IWlanEnum$IkeEapType;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, mIkeEapType:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    return-object v0
.end method

.method public getmIkeEncryptType()Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, mIkeEncryptType:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    return-object v0
.end method

.method public getmIkeIntergrity()Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, mIkeIntergrity:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    return-object v0
.end method

.method public getmIkeLife()I
    .registers 2

    .prologue
    .line 331
    iget v0, p0, mIkeLife:I

    return v0
.end method

.method public getmIkeNatValue()I
    .registers 2

    .prologue
    .line 347
    iget v0, p0, mIkeNatValue:I

    return v0
.end method

.method public getmIkeWindowSize()I
    .registers 2

    .prologue
    .line 335
    iget v0, p0, mIkeWindowSize:I

    return v0
.end method

.method public getmIkeversion()Lcom/sec/epdg/IWlanEnum$Ikeversion;
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, mIkeversion:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    return-object v0
.end method
