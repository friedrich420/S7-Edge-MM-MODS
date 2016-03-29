.class final enum Lcom/android/settings/UserCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/UserCredentialsSettings$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/UserCredentialsSettings$Tab;

.field public static final enum SYSTEM:Lcom/android/settings/UserCredentialsSettings$Tab;

.field public static final enum WIFI:Lcom/android/settings/UserCredentialsSettings$Tab;


# instance fields
.field private final mLabel:I

.field private final mList:I

.field private final mProgress:I

.field private final mTag:Ljava/lang/String;

.field private final mText:I

.field private final mUid:I

.field private final mView:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$Tab;

    const-string v1, "SYSTEM"

    const-string v3, "system"

    const v4, 0x7f0e0cdb

    const v5, 0x7f0d04f2

    const v6, 0x7f0d04f3

    const v7, 0x7f0d04f4

    const v8, 0x7f0d04f5

    const/4 v9, -0x1

    invoke-direct/range {v0 .. v9}, Lcom/android/settings/UserCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/UserCredentialsSettings$Tab;

    .line 106
    new-instance v3, Lcom/android/settings/UserCredentialsSettings$Tab;

    const-string v4, "WIFI"

    const-string v6, "wifi"

    const v7, 0x7f0e0b80

    const v8, 0x7f0d04f7

    const v9, 0x7f0d04f8

    const v10, 0x7f0d04f9

    const v11, 0x7f0d04fa

    const/16 v12, 0x3f2

    move v5, v13

    invoke-direct/range {v3 .. v12}, Lcom/android/settings/UserCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIII)V

    sput-object v3, Lcom/android/settings/UserCredentialsSettings$Tab;->WIFI:Lcom/android/settings/UserCredentialsSettings$Tab;

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/UserCredentialsSettings$Tab;

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/UserCredentialsSettings$Tab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Tab;->WIFI:Lcom/android/settings/UserCredentialsSettings$Tab;

    aput-object v1, v0, v13

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$Tab;->$VALUES:[Lcom/android/settings/UserCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIII)V
    .locals 0
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "label"    # I
    .param p5, "view"    # I
    .param p6, "progress"    # I
    .param p7, "text"    # I
    .param p8, "list"    # I
    .param p9, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIII)V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 123
    iput-object p3, p0, Lcom/android/settings/UserCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    .line 124
    iput p4, p0, Lcom/android/settings/UserCredentialsSettings$Tab;->mLabel:I

    .line 125
    iput p5, p0, Lcom/android/settings/UserCredentialsSettings$Tab;->mView:I

    .line 126
    iput p6, p0, Lcom/android/settings/UserCredentialsSettings$Tab;->mProgress:I

    .line 127
    iput p7, p0, Lcom/android/settings/UserCredentialsSettings$Tab;->mText:I

    .line 128
    iput p8, p0, Lcom/android/settings/UserCredentialsSettings$Tab;->mList:I

    .line 129
    iput p9, p0, Lcom/android/settings/UserCredentialsSettings$Tab;->mUid:I

    .line 130
    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/UserCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$Tab;

    .prologue
    .line 98
    iget v0, p0, Lcom/android/settings/UserCredentialsSettings$Tab;->mProgress:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/settings/UserCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$Tab;

    .prologue
    .line 98
    iget v0, p0, Lcom/android/settings/UserCredentialsSettings$Tab;->mText:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/settings/UserCredentialsSettings$Tab;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$Tab;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/UserCredentialsSettings$Tab;->getAliases()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/UserCredentialsSettings$Tab;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$Tab;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/UserCredentialsSettings$Tab;->getCCMAliases()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/UserCredentialsSettings$Tab;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$Tab;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/UserCredentialsSettings$Tab;->getUCMAliases()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/UserCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$Tab;

    .prologue
    .line 98
    iget v0, p0, Lcom/android/settings/UserCredentialsSettings$Tab;->mUid:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/UserCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$Tab;

    .prologue
    .line 98
    iget v0, p0, Lcom/android/settings/UserCredentialsSettings$Tab;->mView:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/settings/UserCredentialsSettings$Tab;Lcom/android/settings/UserCredentialsSettings$CertHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$Tab;
    .param p1, "x1"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/settings/UserCredentialsSettings$Tab;->getButtonLabel(Lcom/android/settings/UserCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/settings/UserCredentialsSettings$Tab;Lcom/android/settings/UserCredentialsSettings$CertHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$Tab;
    .param p1, "x1"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/settings/UserCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/settings/UserCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/settings/UserCredentialsSettings$Tab;ZLcom/android/settings/UserCredentialsSettings$CertHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$Tab;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/settings/UserCredentialsSettings$Tab;->postOperationUpdate(ZLcom/android/settings/UserCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/UserCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$Tab;

    .prologue
    .line 98
    iget v0, p0, Lcom/android/settings/UserCredentialsSettings$Tab;->mLabel:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/UserCredentialsSettings$Tab;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$Tab;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/UserCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UserCredentialsSettings$Tab;

    .prologue
    .line 98
    iget v0, p0, Lcom/android/settings/UserCredentialsSettings$Tab;->mList:I

    return v0
.end method

.method private getAliases()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 134
    .local v0, "mKeyStore":Landroid/security/KeyStore;
    sget-object v1, Lcom/android/settings/UserCredentialsSettings$8;->$SwitchMap$com$android$settings$UserCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 141
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 136
    :pswitch_0
    const-string v1, "USRCERT_"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 139
    :goto_0
    return-object v1

    :pswitch_1
    const-string v1, "USRCERT_"

    iget v2, p0, Lcom/android/settings/UserCredentialsSettings$Tab;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonConfirmation(Lcom/android/settings/UserCredentialsSettings$CertHolder;)I
    .locals 1
    .param p1, "certHolder"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .prologue
    .line 241
    const v0, 0x7f0e0b81

    return v0
.end method

.method private getButtonLabel(Lcom/android/settings/UserCredentialsSettings$CertHolder;)I
    .locals 1
    .param p1, "certHolder"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .prologue
    .line 238
    const v0, 0x7f0e0cdf

    return v0
.end method

.method private getCCMAliases()[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 145
    const/4 v5, 0x0

    .line 146
    .local v5, "result":[Ljava/lang/String;
    sget-object v7, Lcom/android/settings/UserCredentialsSettings$8;->$SwitchMap$com$android$settings$UserCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$Tab;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 183
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 148
    :pswitch_0
    # getter for: Lcom/android/settings/UserCredentialsSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/UserCredentialsSettings;->access$000()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/tima_keychain/TimaKeychain;->isTimaKeystoreAndCCMEnabledForPackage(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-object v6

    .line 151
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 152
    .local v1, "ccmAliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    # getter for: Lcom/android/settings/UserCredentialsSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/UserCredentialsSettings;->access$000()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/tima_keychain/TimaKeychain;->getAliasListFromTimaKeystore(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 153
    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 155
    :cond_2
    if-eqz v1, :cond_0

    .line 158
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 159
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "result":[Ljava/lang/String;
    check-cast v5, [Ljava/lang/String;

    .restart local v5    # "result":[Ljava/lang/String;
    move-object v6, v5

    .line 160
    goto :goto_0

    .line 164
    .end local v1    # "ccmAliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    # getter for: Lcom/android/settings/UserCredentialsSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/UserCredentialsSettings;->access$000()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/tima_keychain/TimaKeychain;->isTimaKeystoreAndCCMEnabledForPackage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 168
    :try_start_0
    const-string v7, "knox_ccm_policy"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v7

    # setter for: Lcom/android/settings/UserCredentialsSettings;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    invoke-static {v7}, Lcom/android/settings/UserCredentialsSettings;->access$102(Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    .line 169
    # getter for: Lcom/android/settings/UserCredentialsSettings;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    invoke-static {}, Lcom/android/settings/UserCredentialsSettings;->access$100()Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v7

    if-eqz v7, :cond_5

    # getter for: Lcom/android/settings/UserCredentialsSettings;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    invoke-static {}, Lcom/android/settings/UserCredentialsSettings;->access$100()Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "ccmVersion":Ljava/lang/String;
    :goto_1
    const-string v6, "3.0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 171
    # getter for: Lcom/android/settings/UserCredentialsSettings;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    invoke-static {}, Lcom/android/settings/UserCredentialsSettings;->access$100()Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->getAliasesForWiFi()Ljava/util/List;

    move-result-object v2

    .line 172
    .local v2, "ccmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 173
    :cond_3
    if-eqz v2, :cond_4

    .line 174
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 175
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "ccmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "ccmVersion":Ljava/lang/String;
    :cond_4
    :goto_2
    move-object v6, v5

    .line 181
    goto :goto_0

    :cond_5
    move-object v3, v6

    .line 169
    goto :goto_1

    .line 178
    :catch_0
    move-exception v4

    .line 179
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getUCMAliases()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "result":[Ljava/lang/String;
    sget-object v3, Lcom/android/settings/UserCredentialsSettings$8;->$SwitchMap$com$android$settings$UserCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$Tab;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 209
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 191
    :pswitch_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings/UserCredentialsSettings$Tab;->sawUcmPrivateKey(Z)Ljava/util/List;

    move-result-object v2

    .line 192
    .local v2, "ucmAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 193
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 194
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .restart local v0    # "result":[Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 207
    .end local v0    # "result":[Ljava/lang/String;
    .local v1, "result":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 201
    .end local v1    # "result":[Ljava/lang/String;
    .end local v2    # "ucmAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "result":[Ljava/lang/String;
    :pswitch_1
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/UserCredentialsSettings$Tab;->sawUcmPrivateKey(Z)Ljava/util/List;

    move-result-object v2

    .line 202
    .restart local v2    # "ucmAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 203
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 204
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .restart local v0    # "result":[Ljava/lang/String;
    :cond_1
    move-object v1, v0

    .line 207
    .end local v0    # "result":[Ljava/lang/String;
    .restart local v1    # "result":[Ljava/lang/String;
    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private postOperationUpdate(ZLcom/android/settings/UserCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "ok"    # Z
    .param p2, "certHolder"    # Lcom/android/settings/UserCredentialsSettings$CertHolder;

    .prologue
    .line 244
    if-eqz p1, :cond_0

    .line 245
    # getter for: Lcom/android/settings/UserCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;
    invoke-static {p2}, Lcom/android/settings/UserCredentialsSettings$CertHolder;->access$200(Lcom/android/settings/UserCredentialsSettings$CertHolder;)Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;->remove(Lcom/android/settings/UserCredentialsSettings$CertHolder;)V

    .line 246
    # getter for: Lcom/android/settings/UserCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;
    invoke-static {p2}, Lcom/android/settings/UserCredentialsSettings$CertHolder;->access$200(Lcom/android/settings/UserCredentialsSettings$CertHolder;)Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;->notifyDataSetChanged()V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    # getter for: Lcom/android/settings/UserCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;
    invoke-static {p2}, Lcom/android/settings/UserCredentialsSettings$CertHolder;->access$200(Lcom/android/settings/UserCredentialsSettings$CertHolder;)Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;->load()V

    goto :goto_0
.end method

.method private sawUcmPrivateKey(Z)Ljava/util/List;
    .locals 11
    .param p1, "wifi"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    const-string v8, "UserCredentialsSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sawUcmPrivateKey is wifi : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 216
    .local v2, "isWifi":I
    if-eqz p1, :cond_0

    .line 217
    const/4 v2, 0x3

    .line 219
    :cond_0
    const/16 v4, 0x3e8

    .line 220
    .local v4, "senderUid":I
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    const-string v9, "KNOX"

    invoke-direct {v8, v9}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, "uri":Ljava/lang/String;
    invoke-static {}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v1

    .line 223
    .local v1, "credMgr":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;
    if-nez v1, :cond_1

    .line 224
    const/4 v8, 0x0

    .line 234
    :goto_0
    return-object v8

    .line 227
    :cond_1
    const/4 v8, 0x1

    invoke-virtual {v1, v6, v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->saw(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v3

    .line 228
    .local v3, "response":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 229
    .local v7, "uris":[Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 230
    const-string v8, "stringarrayresponse"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 231
    const-string v8, "errorresponse"

    const/4 v9, -0x1

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 232
    .local v5, "statusCode":I
    if-nez v7, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .end local v5    # "statusCode":I
    :cond_2
    :goto_1
    move-object v8, v0

    .line 234
    goto :goto_0

    .line 232
    .restart local v5    # "statusCode":I
    :cond_3
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/UserCredentialsSettings$Tab;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    const-class v0, Lcom/android/settings/UserCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserCredentialsSettings$Tab;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/UserCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/android/settings/UserCredentialsSettings$Tab;->$VALUES:[Lcom/android/settings/UserCredentialsSettings$Tab;

    invoke-virtual {v0}, [Lcom/android/settings/UserCredentialsSettings$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/UserCredentialsSettings$Tab;

    return-object v0
.end method
