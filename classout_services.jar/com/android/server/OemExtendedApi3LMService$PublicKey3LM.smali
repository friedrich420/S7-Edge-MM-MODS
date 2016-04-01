.class Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;
.super Ljava/lang/Object;
.source "OemExtendedApi3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExtendedApi3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublicKey3LM"
.end annotation


# instance fields
.field private final m3LMPublicKey:[B

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 147
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 148
    .local v2, "resources":Landroid/content/res/Resources;
    const-string v0, ""

    .line 149
    .local v0, "cert":Ljava/lang/String;
    const-string v3, "1"

    const-string/jumbo v4, "ro.3lm.production"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 150
    const v3, 0x1040a6f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_23
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {p0, v3}, extractPublicKey([B)Ljava/security/PublicKey;

    move-result-object v1

    .line 155
    .local v1, "key":Ljava/security/PublicKey;
    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    iput-object v3, p0, m3LMPublicKey:[B

    .line 156
    return-void

    .line 152
    .end local v1    # "key":Ljava/security/PublicKey;
    :cond_33
    const v3, 0x1040a70

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method

.method private extractPublicKey([B)Ljava/security/PublicKey;
    .registers 3
    .param p1, "blob"    # [B

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public comparePublicKey([B)Z
    .registers 3
    .param p1, "blob"    # [B

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method
