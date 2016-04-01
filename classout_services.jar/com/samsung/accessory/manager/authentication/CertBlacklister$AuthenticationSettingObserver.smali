.class Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;
.super Landroid/database/ContentObserver;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/CertBlacklister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthenticationSettingObserver"
.end annotation


# instance fields
.field private mBlacklist:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 188
    iput-object p1, p0, mKey:Ljava/lang/String;

    .line 189
    iput-object p2, p0, mContentResolver:Landroid/content/ContentResolver;

    .line 190
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 195
    invoke-virtual {p0}, getValue()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 197
    # setter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mIsBlocked:Z
    invoke-static {v3}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$502(Z)Z

    .line 198
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mCertBlacklistListener:Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$400()Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;->onAuthenticationBlocked(Z)V

    .line 203
    :cond_1c
    :goto_1c
    return-void

    .line 199
    :cond_1d
    const-string/jumbo v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 200
    # setter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mIsBlocked:Z
    invoke-static {v2}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$502(Z)Z

    .line 201
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mCertBlacklistListener:Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$400()Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;->onAuthenticationBlocked(Z)V

    goto :goto_1c
.end method
